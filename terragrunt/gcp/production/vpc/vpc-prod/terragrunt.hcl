terraform {
  source = "../../../../../module/gcp/network"
}

// find `terragrunt.hcl` for base configuration
include {
  path   = find_in_parent_folders()
}

inputs = {
    subnet_name = "subnet-prod-app"
    subnet_ip = "192.168.200.0/24"
}