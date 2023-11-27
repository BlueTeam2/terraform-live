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

variable "common_network_tags" {
  description = "The target network tags that will be applied to all instances"
  type        = list(string)
}

variable "instances" {
  description = "A map of instances configurations"
  type = map(object({
    machine_type    = string
    network_ip      = string
    additional_tags = list(string)
  }))
}
