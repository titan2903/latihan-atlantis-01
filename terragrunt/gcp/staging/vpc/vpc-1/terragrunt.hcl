terraform {
  source = "../../../../../module/gcp/network"
}

// find `terragrunt.hcl` for base configuration
include {
  path   = find_in_parent_folders()
}

inputs = {
    subnet_name = "subnet-staging-app"
    subnet_ip = "192.168.101.0/24"
    project_id = "studilabs-project-01"
    subnet_region = "asia-southeast2"
}