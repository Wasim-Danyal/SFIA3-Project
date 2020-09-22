variable "ingress_ports" {
  type        = list(number)
  description = "List of ports for ingress."
  default     = [22, 9966, 4200, 3306]
}

variable "egress_ports" {
  type        = list(number)
  description = "List of ports for egress."
  default     = [0]
}

variable "vpc_id" {
  description = "VPC ID"
  default = "Will be refered to at main.tf."
}

variable "name" {
  description = "Name of Security Group"
  default = "ProjectSG"
}
