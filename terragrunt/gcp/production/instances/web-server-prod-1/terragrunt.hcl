terraform {
  source = "../../../../../module/gcp/instance"
}

// find `terragrunt.hcl` for base configuration
include {
  path   = find_in_parent_folders()
}

// Jika value di input ini tidak di defined, maka akan mengambil value dari base configuration
inputs = {
    network_tags = ["http-server", "https-server", "allow-ssh"]
    network = "default"
    sub_network = "default"
    image = "ubuntu-os-cloud/ubuntu-2204-lts"
}