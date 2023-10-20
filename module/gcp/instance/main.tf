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


resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type

  tags = var.network_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.sub_network

    access_config {
      // Ephemeral public IP
    }
  }
}
