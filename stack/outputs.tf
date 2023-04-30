output "account" {
  value = data.aws_caller_identity.current.id
}

output "apply_time" {
  value = timestamp()
}
