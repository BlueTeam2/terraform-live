locals {
  env = "stage"
}

provider "google" {
  # credentials = file("credentials.json")
  project     = var.project
  region      = var.provider_region
  zone        = var.provider_zone
}

module "vpc" {
  source  = "../../modules/vpc"
  project = var.project
  env     = local.env
  region  = "us-central1"
}

module "firewall" {
  source  = "../../modules/firewall"
  project = var.project
  network = module.vpc.network

  ingress_rules = {
    allow_ssh = {
      name  = "allow-ssh"
      ports = ["22"] # 10891
    },
    allow_node_exporter = {
      name  = "allow-node-exporter"
      ports = ["18216"]
    },
    allow_postgres = {
      name  = "allow-postgres"
      ports = ["46184"]
    },
    allow_mongo = {
      name  = "allow-mongo"
      ports = ["27017"] # 14587
    },
    allow_redis = {
      name  = "allow-redis"
      ports = ["60210"]
    },
    allow_tomcat = {
      name  = "allow-tomcat"
      ports = ["28275"]
    },
    allow_grafana = {
      name  = "allow-grafana"
      ports = ["27875"]
    }
  }
}

module "instances" {
  source  = "../../modules/instances"
  project = var.project
  env     = local.env
  subnet  = module.vpc.subnet
  zone    = "us-central1-a"

  common_network_tags = [module.firewall.services_target_tags["allow_ssh"], module.firewall.services_target_tags["allow_node_exporter"]]
  instances = {
    postgres = {
      machine_type    = "e2-micro"
      network_ip      = "10.20.10.10"
      additional_tags = [module.firewall.services_target_tags["allow_postgres"]]
    },
    mongo = {
      machine_type    = "e2-micro"
      network_ip      = "10.20.10.11"
      additional_tags = [module.firewall.services_target_tags["allow_mongo"]]
    },
    redis = {
      machine_type    = "e2-micro"
      network_ip      = "10.20.10.12"
      additional_tags = [module.firewall.services_target_tags["allow_redis"]]
    },
    tomcat = {
      machine_type    = "e2-small"
      network_ip      = "10.20.10.13"
      additional_tags = [module.firewall.services_target_tags["allow_tomcat"]]
    },
    grafana = {
      machine_type    = "e2-micro"
      network_ip      = "10.20.10.14"
      additional_tags = [module.firewall.services_target_tags["allow_grafana"]]
    },
  }
}
