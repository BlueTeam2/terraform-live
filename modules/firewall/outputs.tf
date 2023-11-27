output "services_allowed_ports" {
  description = "Allowed ports for schedule services"
  value = {
    for k, v in google_compute_firewall.ingress_rules : k => one(v.allow).ports
  }
}

output "services_target_tags" {
  description = "Target network tags for schedule services"
  value = {
    for k, v in google_compute_firewall.ingress_rules : k => one(v.target_tags)
  }
}
