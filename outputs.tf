output "incident_workflows_id" {
  description = "Map of id values across all incident_workflows, keyed the same as var.incident_workflows"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.id }
}
output "incident_workflows_description" {
  description = "Map of description values across all incident_workflows, keyed the same as var.incident_workflows"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.description }
}
output "incident_workflows_is_enabled" {
  description = "Map of is_enabled values across all incident_workflows, keyed the same as var.incident_workflows"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.is_enabled }
}
output "incident_workflows_name" {
  description = "Map of name values across all incident_workflows, keyed the same as var.incident_workflows"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.name }
}
output "incident_workflows_step" {
  description = "Map of step values across all incident_workflows, keyed the same as var.incident_workflows"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.step }
}
output "incident_workflows_team" {
  description = "Map of team values across all incident_workflows, keyed the same as var.incident_workflows"
  value       = { for k, v in pagerduty_incident_workflow.incident_workflows : k => v.team }
}

