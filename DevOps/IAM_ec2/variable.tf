variable "role_name" {
  description = "IAM role name"
  type        = string
}

variable "service_principals" {
  description = "AWS service principals that can assume this role"
  type        = list(string)
}

variable "permissions" {
  description = "List of custom permissions to attach as inline policies"
  type = list(object({
    name      = string
    actions   = list(string)
    resources = list(string)
  }))
}
