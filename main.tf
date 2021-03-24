provider "aws" {
  region = var.region
}

resource "aws_security_group" "security_group" {
  name        = var.security_group_name
  description = var.security_group_description

  tags = {
    Name = var.security_group_name
  }
}

resource "aws_security_group_rule" "security_group_rule" {
  for_each = var.security_rules_list

  type                     = each.value.type
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol
  cidr_blocks              = each.value.cidr_blocks
  ipv6_cidr_blocks         = each.value.ipv6_cidr_blocks
  self                     = each.value.self
  source_security_group_id = each.value.source_security_group_id

  security_group_id = aws_security_group.security_group.id
}   