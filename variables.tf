variable "incident_workflows" {
  description = <<EOT
Map of incident_workflows, attributes below
Required:
    - name
Optional:
    - description
    - is_enabled
    - team
    - step (block):
        - action (required)
        - inline_steps_input (optional, block):
            - name (required)
            - step (optional, block):
                - action (required)
                - input (optional, block):
                    - name (required)
                    - value (required)
                - name (required)
        - input (optional, block):
            - name (required)
            - value (required)
        - name (required)
EOT

  type = map(object({
    name        = string
    description = optional(string)
    is_enabled  = optional(string)
    team        = optional(string)
    step = optional(list(object({
      action = string
      inline_steps_input = optional(list(object({
        name = string
        step = optional(list(object({
          action = string
          input = optional(list(object({
            name  = string
            value = string
          })))
          name = string
        })))
      })))
      input = optional(list(object({
        name  = string
        value = string
      })))
      name = string
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

