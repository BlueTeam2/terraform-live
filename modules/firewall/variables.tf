variable "project" {
  description = "Project ID where firewall resources will be created"
  type        = string
}

variable "network" {
  description = "Network where firewall resources will be created"
  type        = string
}

variable "ingress_rules" {
  description = "A map of ingress rule configurations"
  type = map(object({
    name  = string
    ports = list(string)
  }))
}
