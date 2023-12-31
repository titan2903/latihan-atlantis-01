remote_state {
  backend = "gcs" // store to Google Cloud Storage
  config = {
    bucket         = "atlantis-prod-01"
    prefix    = "${path_relative_to_include()}/terraform.tfstate"
    credentials = "/etc/atlantis/credential/gcp-production.json" // di sesuaikan dengan path location credentials json key
  }
}

// default or base configuration
inputs = {
  project = "studilabs-project-01"
  region = "asia-southeast2"
  zone = "asia-southeast2-a"
  credentials = "/etc/atlantis/credential/gcp-production.json" // di sesuaikan dengan path location credentials json key
  name = "${basename(get_terragrunt_dir())}" // instance name
  machine_type = "e2-micro"
  subnet_region = "asia-southeast2"

  // network_name = "${basename(get_terragrunt_dir())}"
  // image = "ubuntu-os-cloud/ubuntu-2204-lts"
  // auto_create_subnetworks = false
}