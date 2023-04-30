
locals {
  tags = {
    "isssue" = "authorized-callback-services"
    "author" = "ik"
  }
}

# Generate an AWS provider block
terraform {
  source = "stack"
}

inputs = merge(

)

remote_state {
  ## Local backend - useful for testing locally; writes state to stack directory
  backend = "local"
  config = {
    path = "${get_terragrunt_dir()}/states/terraform.tfstate"
  }
  generate = {
    path      = "_backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}
