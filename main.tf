resource "azurerm_sentinel_alert_rule_scheduled" "sentinel_alert_rule_scheduleds" {
  for_each = var.sentinel_alert_rule_scheduleds

  display_name                = each.value.display_name
  log_analytics_workspace_id  = each.value.log_analytics_workspace_id
  name                        = each.value.name
  query                       = each.value.query
  severity                    = each.value.severity
  techniques                  = each.value.techniques
  tactics                     = each.value.tactics
  suppression_enabled         = each.value.suppression_enabled
  suppression_duration        = each.value.suppression_duration
  query_period                = each.value.query_period
  description                 = each.value.description
  enabled                     = each.value.enabled
  trigger_operator            = each.value.trigger_operator
  custom_details              = each.value.custom_details
  alert_rule_template_version = each.value.alert_rule_template_version
  alert_rule_template_guid    = each.value.alert_rule_template_guid
  query_frequency             = each.value.query_frequency
  trigger_threshold           = each.value.trigger_threshold

  dynamic "alert_details_override" {
    for_each = each.value.alert_details_override != null ? each.value.alert_details_override : []
    content {
      description_format  = alert_details_override.value.description_format
      display_name_format = alert_details_override.value.display_name_format
      dynamic "dynamic_property" {
        for_each = alert_details_override.value.dynamic_property != null ? alert_details_override.value.dynamic_property : []
        content {
          name  = dynamic_property.value.name
          value = dynamic_property.value.value
        }
      }
      severity_column_name = alert_details_override.value.severity_column_name
      tactics_column_name  = alert_details_override.value.tactics_column_name
    }
  }

  dynamic "entity_mapping" {
    for_each = each.value.entity_mapping != null ? each.value.entity_mapping : []
    content {
      entity_type = entity_mapping.value.entity_type
      dynamic "field_mapping" {
        for_each = entity_mapping.value.field_mapping
        content {
          column_name = field_mapping.value.column_name
          identifier  = field_mapping.value.identifier
        }
      }
    }
  }

  dynamic "event_grouping" {
    for_each = each.value.event_grouping != null ? [each.value.event_grouping] : []
    content {
      aggregation_method = event_grouping.value.aggregation_method
    }
  }

  dynamic "incident" {
    for_each = each.value.incident != null ? [each.value.incident] : []
    content {
      create_incident_enabled = incident.value.create_incident_enabled
      grouping {
        by_alert_details        = incident.value.grouping.by_alert_details
        by_custom_details       = incident.value.grouping.by_custom_details
        by_entities             = incident.value.grouping.by_entities
        enabled                 = incident.value.grouping.enabled
        entity_matching_method  = incident.value.grouping.entity_matching_method
        lookback_duration       = incident.value.grouping.lookback_duration
        reopen_closed_incidents = incident.value.grouping.reopen_closed_incidents
      }
    }
  }

  dynamic "sentinel_entity_mapping" {
    for_each = each.value.sentinel_entity_mapping != null ? each.value.sentinel_entity_mapping : []
    content {
      column_name = sentinel_entity_mapping.value.column_name
    }
  }
}

