output "network_tags" {
  description = "The network tags for schedule services"
  value       = module.firewall.services_target_tags
}

output "allowed_ports_by_service" {
  description = "The firewall allowed for schedule services"
  value       = module.firewall.services_allowed_ports
}

output "internal_ips" {
  description = "The internal IP addresses for schedule instances"
  value       = module.instances.internal_ips
}
