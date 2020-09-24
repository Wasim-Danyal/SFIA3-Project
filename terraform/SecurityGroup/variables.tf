variable "ingress_ports" {
  type        = list(number)
  description = "Ingress ports"
  default     = [22, 9966, 4200, 3306]
}

variable "egress_ports" {
  type        = list(number)
  description = "Egress ports."
  default     = [0]
}

variable "vpc_id" {
  description = "VPC ID"
  default = "override"
}

variable "name" {
  description = "Name of Security Group"
  default = "T3ProjectSG"
}
