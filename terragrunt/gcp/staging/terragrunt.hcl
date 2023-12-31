remote_state {
  backend = "gcs" // stor to Google Cloud Storage
  config = {
    bucket         = "atlantis-stag-01"
    prefix    = "${path_relative_to_include()}/terraform.tfstate"
    credentials = "/etc/atlantis/credential/gcp-staging.json" // di sesuaikan dengan path location credentials json key
  }
}

// default or base configuration
inputs = {
  project = "studilabs-project-01"
  region = "asia-southeast2"
  zone = "asia-southeast2-a"
  credentials = "/etc/atlantis/credential/gcp-staging.json" // di sesuaikan dengan path location credentials json key
  name = "${basename(get_terragrunt_dir())}" // instance name
  machine_type = "e2-micro"
  subnet_region = "asia-southeast2"
}
