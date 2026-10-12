resource "pagerduty_incident_workflow" "incident_workflows" {
  for_each = var.incident_workflows

  name        = each.value.name
  description = each.value.description
  is_enabled  = each.value.is_enabled
  team        = each.value.team

  dynamic "step" {
    for_each = each.value.step != null ? each.value.step : []
    content {
      action = step.value.action
      dynamic "inline_steps_input" {
        for_each = step.value.inline_steps_input != null ? step.value.inline_steps_input : []
        content {
          name = inline_steps_input.value.name
          dynamic "step" {
            for_each = inline_steps_input.value.step != null ? inline_steps_input.value.step : []
            content {
              action = step.value.action
              dynamic "input" {
                for_each = step.value.input != null ? step.value.input : []
                content {
                  name  = input.value.name
                  value = input.value.value
                }
              }
              name = step.value.name
            }
          }
        }
      }
      dynamic "input" {
        for_each = step.value.input != null ? step.value.input : []
        content {
          name  = input.value.name
          value = input.value.value
        }
      }
      name = step.value.name
    }
  }
}

