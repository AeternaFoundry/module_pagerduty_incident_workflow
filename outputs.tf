output "incident_workflows_id" {
  description = "Map of id values across all incident_workflows, keyed the same as var.incident_workflows except keys with no id are omitted"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "incident_workflows_description" {
  description = "Map of description values across all incident_workflows, keyed the same as var.incident_workflows except keys with no description are omitted"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.description if v.description != null && length(v.description) > 0 }
}
output "incident_workflows_is_enabled" {
  description = "Map of is_enabled values across all incident_workflows, keyed the same as var.incident_workflows except keys with no is_enabled are omitted"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.is_enabled if v.is_enabled != null && length(v.is_enabled) > 0 }
}
output "incident_workflows_name" {
  description = "Map of name values across all incident_workflows, keyed the same as var.incident_workflows except keys with no name are omitted"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.name if v.name != null && length(v.name) > 0 }
}
output "incident_workflows_step" {
  description = "Map of step values across all incident_workflows, keyed the same as var.incident_workflows except keys with no step are omitted"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.step if v.step != null && length(v.step) > 0 }
}
output "incident_workflows_team" {
  description = "Map of team values across all incident_workflows, keyed the same as var.incident_workflows except keys with no team are omitted"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.team if v.team != null && length(v.team) > 0 }
}

