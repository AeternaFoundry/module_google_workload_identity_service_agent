resource "google_workload_identity_service_agent" "workload_identity_service_agents" {
  for_each = var.workload_identity_service_agents

  parent = each.value.parent

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

