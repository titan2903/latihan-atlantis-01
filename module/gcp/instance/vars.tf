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

variable "name" {
  type        = string
  description = "name VM instance"
}

variable "machine_type" {
  type = string
}

variable "network_tags" {
  type = list(any)
}

variable "image" {
  type = string
}

variable "network" {
  type = string
}

variable "sub_network" {
  type = string
}
