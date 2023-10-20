remote_state {
  backend = "gcs" // stor to Google Cloud Storage
  config = {
    bucket         = "terraform-tfstate-201023"
    prefix    = "${path_relative_to_include()}/terraform.tfstate"
    credentials = "/home/titan/bootcamp_devops/studidevsecops/02_belajar_terraform/terraform_03/google-cred.json"
  }
}

// defaul t or base configuration
inputs = {
  project = "studilabs-project-01"
  region = "asia-southeast2"
  zone = "asia-southeast2-a"
  credentials = "/home/titan/bootcamp_devops/studidevsecops/02_belajar_terraform/terraform_03/google-cred.json"

  network_name = "${basename(get_terragrunt_dir())}"
  name = "${basename(get_terragrunt_dir())}" // instance name
  machine_type = "e2-micro"
  image = "ubuntu-os-cloud/ubuntu-2204-lts"
  auto_create_subnetworks = false
}