locals {
  network = element(split("-", var.subnet), 0)
}

resource "google_compute_instance" "service_instances" {
  for_each = var.instances

  desired_status = var.machines_desired_status
  project        = var.project
  zone           = var.zone
  name           = "${local.network}-${each.key}-schedule"
  machine_type   = each.value.machine_type

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  labels = {
    app     = "schedule"
    env     = var.env
    service = each.key
  }

  network_interface {
    subnetwork = var.subnet
    network_ip = each.value.network_ip

    access_config {
      # Include this section to give the VM an external IP address
    }
  }

  tags = concat([
    var.ssh_network_tag,
    var.node_exporter_network_tag
    ],
  each.value.additional_tags)
}
