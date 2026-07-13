variable "sentinel_alert_rule_scheduleds" {
  description = <<EOT
Map of sentinel_alert_rule_scheduleds, attributes below
Required:
    - display_name
    - log_analytics_workspace_id
    - name
    - query
    - severity
Optional:
    - alert_rule_template_guid
    - alert_rule_template_version
    - custom_details
    - description
    - enabled
    - query_frequency
    - query_period
    - suppression_duration
    - suppression_enabled
    - tactics
    - techniques
    - trigger_operator
    - trigger_threshold
    - alert_details_override (block):
        - description_format (optional)
        - display_name_format (optional)
        - dynamic_property (optional, block):
            - name (required)
            - value (required)
        - severity_column_name (optional)
        - tactics_column_name (optional)
    - entity_mapping (block):
        - entity_type (required)
        - field_mapping (required, block):
            - column_name (required)
            - identifier (required)
    - event_grouping (block):
        - aggregation_method (required)
    - incident (block):
        - create_incident_enabled (required)
        - grouping (required, block):
            - by_alert_details (optional)
            - by_custom_details (optional)
            - by_entities (optional)
            - enabled (optional)
            - entity_matching_method (optional)
            - lookback_duration (optional)
            - reopen_closed_incidents (optional)
    - sentinel_entity_mapping (block):
        - column_name (required)
EOT

  type = map(object({
    display_name                = string
    log_analytics_workspace_id  = string
    name                        = string
    query                       = string
    severity                    = string
    techniques                  = optional(set(string))
    tactics                     = optional(set(string))
    suppression_enabled         = optional(bool)
    suppression_duration        = optional(string)
    query_period                = optional(string)
    description                 = optional(string)
    enabled                     = optional(bool)
    trigger_operator            = optional(string)
    custom_details              = optional(map(string))
    alert_rule_template_version = optional(string)
    alert_rule_template_guid    = optional(string)
    query_frequency             = optional(string)
    trigger_threshold           = optional(number)
    alert_details_override = optional(list(object({
      description_format  = optional(string)
      display_name_format = optional(string)
      dynamic_property = optional(list(object({
        name  = string
        value = string
      })))
      severity_column_name = optional(string)
      tactics_column_name  = optional(string)
    })))
    entity_mapping = optional(list(object({
      entity_type = string
      field_mapping = list(object({
        column_name = string
        identifier  = string
      }))
    })))
    event_grouping = optional(object({
      aggregation_method = string
    }))
    incident = optional(object({
      create_incident_enabled = bool
      grouping = object({
        by_alert_details        = optional(list(string))
        by_custom_details       = optional(list(string))
        by_entities             = optional(list(string))
        enabled                 = optional(bool)
        entity_matching_method  = optional(string)
        lookback_duration       = optional(string)
        reopen_closed_incidents = optional(bool)
      })
    }))
    sentinel_entity_mapping = optional(list(object({
      column_name = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.entity_mapping == null || (length(v.entity_mapping) <= 10)
      )
    ])
    error_message = "Each entity_mapping list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.entity_mapping == null || alltrue([for item in v.entity_mapping : (length(item.field_mapping) >= 1 && length(item.field_mapping) <= 3)])
      )
    ])
    error_message = "Each field_mapping list must contain between 1 and 3 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.sentinel_entity_mapping == null || (length(v.sentinel_entity_mapping) <= 10)
      )
    ])
    error_message = "Each sentinel_entity_mapping list must contain at most 10 items"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_sentinel_alert_rule_scheduled's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: display_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: alert_rule_template_guid
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: event_grouping.aggregation_method
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tactics[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: techniques[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: incident.grouping.lookback_duration
  #   source:    [from validate.ISO8601Duration] !ok
  # path: incident.grouping.lookback_duration
  #   source:    [from validate.ISO8601Duration] err != nil
  # path: incident.grouping.entity_matching_method
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: incident.grouping.by_entities[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: incident.grouping.by_alert_details[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: incident.grouping.by_custom_details[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: severity
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: query
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: query_frequency
  #   source:    validate.ISO8601DurationBetween: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: query_period
  #   source:    validate.ISO8601DurationBetween: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: trigger_operator
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: trigger_threshold
  #   condition: value >= 0
  #   message:   must be at least 0
  # path: suppression_duration
  #   source:    validate.ISO8601DurationBetween: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: alert_details_override.description_format
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: alert_details_override.display_name_format
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: alert_details_override.severity_column_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: alert_details_override.tactics_column_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: alert_details_override.dynamic_property.name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: alert_details_override.dynamic_property.value
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: custom_details[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: entity_mapping.entity_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: entity_mapping.field_mapping.identifier
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: entity_mapping.field_mapping.column_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: sentinel_entity_mapping.column_name
  #   condition: length(value) > 0
  #   message:   must not be empty
}

