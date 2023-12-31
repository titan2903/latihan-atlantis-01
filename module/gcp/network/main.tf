terraform {
  backend "gcs" {}
}

provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
  credentials = var.credentials # login menggunakan json key yang telah di create
}

provider "google-beta" {
  project     = var.project
  region      = var.region
  zone        = var.zone
  credentials = var.credentials
}


module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 7.3"

    project_id   = var.project
    network_name = var.name

    subnets = [
        {
            subnet_name           = var.subnet_name
            subnet_ip             = var.subnet_ip
            subnet_region         = var.subnet_region
        }
    ]
}