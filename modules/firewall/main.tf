resource "google_compute_firewall" "ingress_rules" {
  for_each = var.ingress_rules

  name    = "${var.network}-${each.value.name}"
  network = var.network
  project = var.project

  allow {
    protocol = "tcp"
    ports    = each.value.ports
  }

  target_tags   = [each.value.name]
  source_ranges = ["0.0.0.0/0"]
}
