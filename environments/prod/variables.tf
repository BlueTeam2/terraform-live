variable "project" {
  description = "GCP project ID"
  type        = string
}

variable "provider_region" {
  description = "Region where provider will operate. Can be overriden by resources explicitly"
  type        = string
}

variable "provider_zone" {
  description = "Zone where provider will operate. Can be overriden by resources explicitly"
  type        = string
}
