# variable "region" {}

variable "tags" {
  description = "tags"
  type        = map(any)
  default     = {}
}
