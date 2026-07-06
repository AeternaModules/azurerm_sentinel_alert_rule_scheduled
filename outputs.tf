output "sentinel_alert_rule_scheduleds" {
  description = "All sentinel_alert_rule_scheduled resources"
  value       = azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds
}
output "sentinel_alert_rule_scheduleds_alert_details_override" {
  description = "List of alert_details_override values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.alert_details_override]
}
output "sentinel_alert_rule_scheduleds_alert_rule_template_guid" {
  description = "List of alert_rule_template_guid values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.alert_rule_template_guid]
}
output "sentinel_alert_rule_scheduleds_alert_rule_template_version" {
  description = "List of alert_rule_template_version values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.alert_rule_template_version]
}
output "sentinel_alert_rule_scheduleds_custom_details" {
  description = "List of custom_details values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.custom_details]
}
output "sentinel_alert_rule_scheduleds_description" {
  description = "List of description values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.description]
}
output "sentinel_alert_rule_scheduleds_display_name" {
  description = "List of display_name values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.display_name]
}
output "sentinel_alert_rule_scheduleds_enabled" {
  description = "List of enabled values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.enabled]
}
output "sentinel_alert_rule_scheduleds_entity_mapping" {
  description = "List of entity_mapping values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.entity_mapping]
}
output "sentinel_alert_rule_scheduleds_event_grouping" {
  description = "List of event_grouping values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.event_grouping]
}
output "sentinel_alert_rule_scheduleds_incident" {
  description = "List of incident values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.incident]
}
output "sentinel_alert_rule_scheduleds_log_analytics_workspace_id" {
  description = "List of log_analytics_workspace_id values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.log_analytics_workspace_id]
}
output "sentinel_alert_rule_scheduleds_name" {
  description = "List of name values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.name]
}
output "sentinel_alert_rule_scheduleds_query" {
  description = "List of query values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.query]
}
output "sentinel_alert_rule_scheduleds_query_frequency" {
  description = "List of query_frequency values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.query_frequency]
}
output "sentinel_alert_rule_scheduleds_query_period" {
  description = "List of query_period values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.query_period]
}
output "sentinel_alert_rule_scheduleds_sentinel_entity_mapping" {
  description = "List of sentinel_entity_mapping values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.sentinel_entity_mapping]
}
output "sentinel_alert_rule_scheduleds_severity" {
  description = "List of severity values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.severity]
}
output "sentinel_alert_rule_scheduleds_suppression_duration" {
  description = "List of suppression_duration values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.suppression_duration]
}
output "sentinel_alert_rule_scheduleds_suppression_enabled" {
  description = "List of suppression_enabled values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.suppression_enabled]
}
output "sentinel_alert_rule_scheduleds_tactics" {
  description = "List of tactics values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.tactics]
}
output "sentinel_alert_rule_scheduleds_techniques" {
  description = "List of techniques values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.techniques]
}
output "sentinel_alert_rule_scheduleds_trigger_operator" {
  description = "List of trigger_operator values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.trigger_operator]
}
output "sentinel_alert_rule_scheduleds_trigger_threshold" {
  description = "List of trigger_threshold values across all sentinel_alert_rule_scheduleds"
  value       = [for k, v in azurerm_sentinel_alert_rule_scheduled.sentinel_alert_rule_scheduleds : v.trigger_threshold]
}

