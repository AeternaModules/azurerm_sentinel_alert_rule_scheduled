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
    suppression_enabled         = optional(bool)   # Default: false
    suppression_duration        = optional(string) # Default: "PT5H"
    query_period                = optional(string) # Default: "PT5H"
    description                 = optional(string)
    enabled                     = optional(bool)   # Default: true
    trigger_operator            = optional(string) # Default: "GreaterThan"
    custom_details              = optional(map(string))
    alert_rule_template_version = optional(string)
    alert_rule_template_guid    = optional(string)
    query_frequency             = optional(string) # Default: "PT5H"
    trigger_threshold           = optional(number) # Default: 0
    alert_details_override = optional(object({
      description_format  = optional(string)
      display_name_format = optional(string)
      dynamic_property = optional(object({
        name  = string
        value = string
      }))
      severity_column_name = optional(string)
      tactics_column_name  = optional(string)
    }))
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
        enabled                 = optional(bool)   # Default: true
        entity_matching_method  = optional(string) # Default: "AnyAlert"
        lookback_duration       = optional(string) # Default: "PT5M"
        reopen_closed_incidents = optional(bool)   # Default: false
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
        v.entity_mapping == null || alltrue([for item in v.entity_mapping : (length(item.field_mapping) <= 3)])
      )
    ])
    error_message = "Each field_mapping list must contain at most 3 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.sentinel_entity_mapping == null || (length(v.sentinel_entity_mapping) <= 10)
      )
    ])
    error_message = "Each sentinel_entity_mapping list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.alert_rule_template_guid == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.alert_rule_template_guid)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.techniques == null || (length(v.techniques) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.incident == null || (v.incident.grouping.by_custom_details == null || (length(v.incident.grouping.by_custom_details) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        length(v.query) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.trigger_threshold == null || (v.trigger_threshold >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.alert_details_override == null || (v.alert_details_override.description_format == null || (length(v.alert_details_override.description_format) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.alert_details_override == null || (v.alert_details_override.display_name_format == null || (length(v.alert_details_override.display_name_format) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.alert_details_override == null || (v.alert_details_override.severity_column_name == null || (length(v.alert_details_override.severity_column_name) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.alert_details_override == null || (v.alert_details_override.tactics_column_name == null || (length(v.alert_details_override.tactics_column_name) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.alert_details_override == null || (v.alert_details_override.dynamic_property == null || (length(v.alert_details_override.dynamic_property.value) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_scheduleds : (
        v.custom_details == null || (length(v.custom_details) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_sentinel_alert_rule_scheduled's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: event_grouping.aggregation_method
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tactics[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
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
  # path: severity
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: query_frequency
  #   source:    validate.ISO8601DurationBetween: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: query_period
  #   source:    validate.ISO8601DurationBetween: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: trigger_operator
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: suppression_duration
  #   source:    validate.ISO8601DurationBetween: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: alert_details_override.dynamic_property.name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
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

