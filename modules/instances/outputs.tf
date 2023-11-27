output "internal_ips" {
  description = "The internal IPs of all instances"
  value = {
    for k, v in google_compute_instance.service_instances : k => v.network_interface.0.network_ip
  }
}
