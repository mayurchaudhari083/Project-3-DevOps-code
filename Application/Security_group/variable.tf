variable "sg_name" {
  type        = string
  description = "Security group name"
}

variable "sg_description" {
  type        = string
  description = "Security group description"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for the security group"
}

variable "sg_ingress" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "Ingress rules"
}

variable "sg_egress" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "Egress rules"
}

variable "sg_tags" {
  type        = map(string)
  description = "Tags for the security group"
  default     = {}
}
variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}
