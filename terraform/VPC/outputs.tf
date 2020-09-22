output "VPC_ID" {
  value = aws_vpc.ProjectVPC.id
}

output "Subnet_ID" {
  value = aws_subnet.ProjectSubnet.id
}
