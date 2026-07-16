output "sentinel_alert_rule_scheduleds_id" {
  description = "Map of id values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sentinel_alert_rule_scheduleds_alert_details_override" {
  description = "Map of alert_details_override values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.alert_details_override if v.alert_details_override != null && length(v.alert_details_override) > 0 }
}
output "sentinel_alert_rule_scheduleds_alert_rule_template_guid" {
  description = "Map of alert_rule_template_guid values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.alert_rule_template_guid if v.alert_rule_template_guid != null && length(v.alert_rule_template_guid) > 0 }
}
output "sentinel_alert_rule_scheduleds_alert_rule_template_version" {
  description = "Map of alert_rule_template_version values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.alert_rule_template_version if v.alert_rule_template_version != null && length(v.alert_rule_template_version) > 0 }
}
output "sentinel_alert_rule_scheduleds_custom_details" {
  description = "Map of custom_details values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.custom_details if v.custom_details != null && length(v.custom_details) > 0 }
}
output "sentinel_alert_rule_scheduleds_description" {
  description = "Map of description values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.description if v.description != null && length(v.description) > 0 }
}
output "sentinel_alert_rule_scheduleds_display_name" {
  description = "Map of display_name values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "sentinel_alert_rule_scheduleds_enabled" {
  description = "Map of enabled values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.enabled if v.enabled != null }
}
output "sentinel_alert_rule_scheduleds_entity_mapping" {
  description = "Map of entity_mapping values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.entity_mapping if v.entity_mapping != null && length(v.entity_mapping) > 0 }
}
output "sentinel_alert_rule_scheduleds_event_grouping" {
  description = "Map of event_grouping values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.event_grouping if v.event_grouping != null && length(v.event_grouping) > 0 }
}
output "sentinel_alert_rule_scheduleds_incident" {
  description = "Map of incident values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.incident if v.incident != null && length(v.incident) > 0 }
}
output "sentinel_alert_rule_scheduleds_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.log_analytics_workspace_id if v.log_analytics_workspace_id != null && length(v.log_analytics_workspace_id) > 0 }
}
output "sentinel_alert_rule_scheduleds_name" {
  description = "Map of name values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sentinel_alert_rule_scheduleds_query" {
  description = "Map of query values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.query if v.query != null && length(v.query) > 0 }
}
output "sentinel_alert_rule_scheduleds_query_frequency" {
  description = "Map of query_frequency values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.query_frequency if v.query_frequency != null && length(v.query_frequency) > 0 }
}
output "sentinel_alert_rule_scheduleds_query_period" {
  description = "Map of query_period values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.query_period if v.query_period != null && length(v.query_period) > 0 }
}
output "sentinel_alert_rule_scheduleds_sentinel_entity_mapping" {
  description = "Map of sentinel_entity_mapping values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.sentinel_entity_mapping if v.sentinel_entity_mapping != null && length(v.sentinel_entity_mapping) > 0 }
}
output "sentinel_alert_rule_scheduleds_severity" {
  description = "Map of severity values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.severity if v.severity != null && length(v.severity) > 0 }
}
output "sentinel_alert_rule_scheduleds_suppression_duration" {
  description = "Map of suppression_duration values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.suppression_duration if v.suppression_duration != null && length(v.suppression_duration) > 0 }
}
output "sentinel_alert_rule_scheduleds_suppression_enabled" {
  description = "Map of suppression_enabled values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.suppression_enabled if v.suppression_enabled != null }
}
output "sentinel_alert_rule_scheduleds_tactics" {
  description = "Map of tactics values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.tactics if v.tactics != null && length(v.tactics) > 0 }
}
output "sentinel_alert_rule_scheduleds_techniques" {
  description = "Map of techniques values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.techniques if v.techniques != null && length(v.techniques) > 0 }
}
output "sentinel_alert_rule_scheduleds_trigger_operator" {
  description = "Map of trigger_operator values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.trigger_operator if v.trigger_operator != null && length(v.trigger_operator) > 0 }
}
output "sentinel_alert_rule_scheduleds_trigger_threshold" {
  description = "Map of trigger_threshold values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.trigger_threshold if v.trigger_threshold != null }
}

