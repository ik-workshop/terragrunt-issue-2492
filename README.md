<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Contents

- [Terragrunt issue](#terragrunt-issue)
  - [Commands](#commands)
  - [Create](#create)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Terragrunt issue


## Commands

```sh
aws s3api get-object-attributes --bucket terraform-state-888888888888 --key "issues/2492-terraform.tfstate" --object-attributes ObjectParts
aws s3api head-object --bucket terraform-state-888888888888 --key "issues/2492-terraform.tfstate"

aws s3api head-object --bucket terraform-state-888888888888 --key "issues/2492-terraform.tfstate" --query '{encryption:ServerSideEncryption,key_id:SSEKMSKeyId}'
{
    "encryption": "aws:kms",
    "key_id": "arn:aws:kms:eu-west-1:XXXXXXXXX:key/11644643-79fe-432d-ad82-97987979"
}
```

## Create

[**Create a repository using this template →**][template.generate]

<!-- resources -->
[template.generate]: https://github.com/ik-workshop/terragrunt-issue-2492/generate
