variable "project" {
  description = "The project ID where VPC resources will be created"
  type        = string
}

variable "env" {
  description = "The target environment"
  type        = string
}

variable "zone" {
  description = "The zone where CE resources will be created"
  type        = string
}

variable "subnet" {
  description = "The subnet where CE resources will be created"
  type        = string
}

variable "machines_desired_status" {
  description = "The desired status of machines. Either \"RUNNING\" or \"TERMINATED\""
  type        = string
  default     = "RUNNING"
}

variable "ssh_network_tag" {
  description = "The target tag to open SSH service ports"
  type        = string
}

variable "node_exporter_network_tag" {
  description = "The target tag to open Node Exporter service ports"
  type        = string
}

variable "instances" {
  description = "A map of instances configurations"
  type = map(object({
    machine_type    = string
    network_ip      = string
    additional_tags = list(string)
  }))
}
