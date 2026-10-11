output "workload_identity_service_agents_id" {
  description = "Map of id values across all workload_identity_service_agents, keyed the same as var.workload_identity_service_agents except keys with no id are omitted"
  value       = { for k, v in google_workload_identity_service_agent.workload_identity_service_agents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workload_identity_service_agents_parent" {
  description = "Map of parent values across all workload_identity_service_agents, keyed the same as var.workload_identity_service_agents except keys with no parent are omitted"
  value       = { for k, v in google_workload_identity_service_agent.workload_identity_service_agents : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "workload_identity_service_agents_service_agents" {
  description = "Map of service_agents values across all workload_identity_service_agents, keyed the same as var.workload_identity_service_agents except keys with no service_agents are omitted"
  value       = { for k, v in google_workload_identity_service_agent.workload_identity_service_agents : k => v.service_agents if v.service_agents != null && length(v.service_agents) > 0 }
}

