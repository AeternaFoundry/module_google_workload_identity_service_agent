variable "workload_identity_service_agents" {
  description = <<EOT
Map of workload_identity_service_agents, attributes below
Required:
    - parent
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    parent = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

