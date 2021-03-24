variable "region" {
  type        = string
  description = "The region that our SG will be created in"
}

variable "security_group_name" {
  type        = string
  description = "The security group name"
}

variable "security_group_description" {
  type        = string
  description = "Description for the Security Group"
}

variable "security_rules_list" {
  description = "List of rules to apply to the Security Group"
}