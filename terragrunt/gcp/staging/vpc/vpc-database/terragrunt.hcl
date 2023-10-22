terraform {
  source = "../../../../../module/gcp/network"
}

// find `terragrunt.hcl` for base configuration
include {
  path   = find_in_parent_folders()
}

inputs = {
    subnet_name = "subnet-staging-db"
    subnet_ip = "192.168.111.0/24"
}