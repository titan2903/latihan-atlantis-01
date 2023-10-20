variable "project" {
  type        = string
  description = "isi dengan project id gcp"
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "credentials" {
  type = string
}

variable "network_name" {
  type = string
}

variable "auto_create_subnetworks" {
  type = bool
}

variable "ip_cidr_range" {
  type = string
}
