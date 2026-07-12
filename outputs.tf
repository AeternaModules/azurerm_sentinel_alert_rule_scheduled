output "sentinel_alert_rule_scheduleds_id" {
  description = "Map of id values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.id }
}
output "sentinel_alert_rule_scheduleds_alert_details_override" {
  description = "Map of alert_details_override values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.alert_details_override }
}
output "sentinel_alert_rule_scheduleds_alert_rule_template_guid" {
  description = "Map of alert_rule_template_guid values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.alert_rule_template_guid }
}
output "sentinel_alert_rule_scheduleds_alert_rule_template_version" {
  description = "Map of alert_rule_template_version values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.alert_rule_template_version }
}
output "sentinel_alert_rule_scheduleds_custom_details" {
  description = "Map of custom_details values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.custom_details }
}
output "sentinel_alert_rule_scheduleds_description" {
  description = "Map of description values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.description }
}
output "sentinel_alert_rule_scheduleds_display_name" {
  description = "Map of display_name values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.display_name }
}
output "sentinel_alert_rule_scheduleds_enabled" {
  description = "Map of enabled values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.enabled }
}
output "sentinel_alert_rule_scheduleds_entity_mapping" {
  description = "Map of entity_mapping values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.entity_mapping }
}
output "sentinel_alert_rule_scheduleds_event_grouping" {
  description = "Map of event_grouping values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.event_grouping }
}
output "sentinel_alert_rule_scheduleds_incident" {
  description = "Map of incident values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.incident }
}
output "sentinel_alert_rule_scheduleds_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.log_analytics_workspace_id }
}
output "sentinel_alert_rule_scheduleds_name" {
  description = "Map of name values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.name }
}
output "sentinel_alert_rule_scheduleds_query" {
  description = "Map of query values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.query }
}
output "sentinel_alert_rule_scheduleds_query_frequency" {
  description = "Map of query_frequency values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.query_frequency }
}
output "sentinel_alert_rule_scheduleds_query_period" {
  description = "Map of query_period values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.query_period }
}
output "sentinel_alert_rule_scheduleds_sentinel_entity_mapping" {
  description = "Map of sentinel_entity_mapping values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.sentinel_entity_mapping }
}
output "sentinel_alert_rule_scheduleds_severity" {
  description = "Map of severity values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.severity }
}
output "sentinel_alert_rule_scheduleds_suppression_duration" {
  description = "Map of suppression_duration values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.suppression_duration }
}
output "sentinel_alert_rule_scheduleds_suppression_enabled" {
  description = "Map of suppression_enabled values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.suppression_enabled }
}
output "sentinel_alert_rule_scheduleds_tactics" {
  description = "Map of tactics values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.tactics }
}
output "sentinel_alert_rule_scheduleds_techniques" {
  description = "Map of techniques values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.techniques }
}
output "sentinel_alert_rule_scheduleds_trigger_operator" {
  description = "Map of trigger_operator values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.trigger_operator }
}
output "sentinel_alert_rule_scheduleds_trigger_threshold" {
  description = "Map of trigger_threshold values across all sentinel_alert_rule_scheduleds, keyed the same as var.sentinel_alert_rule_scheduleds"
  value       = { for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : k => v.trigger_threshold }
}

