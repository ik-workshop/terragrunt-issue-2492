
locals {
  tags = {
    "isssue" = "https://github.com/gruntwork-io/terragrunt/issues/2492"
    "author" = "ik"
  }
  issue_id   = "2492"
  account_id = get_aws_account_id()
}

# Generate an AWS provider block
terraform {
  source = "stack"
}

inputs = merge(

)

# remote_state {
#   ## Local backend - useful for testing locally; writes state to stack directory
#   backend = "local"
#   config = {
#     path = "${get_terragrunt_dir()}/states/terraform.tfstate"
#   }
#   generate = {
#     path      = "_backend.tf"
#     if_exists = "overwrite_terragrunt"
#   }
# }

remote_state {
  ## Local backend - useful for testing locally; writes state to stack directory
  backend = "s3"
  config = {
    encrypt                 = true
    bucket                  = "terraform-state-${local.account_id}"
    region                  = "eu-west-1"
    key                     = "issues/${local.issue_id}-terraform.tfstate"
    kms_key_id              = "alias/paas-eks"
    # kms_key_id              = get_env("KMS_KEY_ID")
    # kms_key_id              = get_env("KMS_KEY_ARN")
    disable_bucket_update   = true
    skip_bucket_root_access = true
  }
  generate = {
    path      = "_backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}
