terraform {
  backend "gcs" {}
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.2.0"
    }
  }
}

provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
  credentials = var.credentials # login menggunakan json key yang telah di create
}

resource "google_compute_network" "default" {
  name                    = var.network_name
  auto_create_subnetworks = var.auto_create_subnetworks
}

resource "google_compute_subnetwork" "default" {
  name          = var.network_name
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = google_compute_network.default.id
}
