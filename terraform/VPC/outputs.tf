output "VPC_ID" {
  value = aws_vpc.T3VPC.id
}

output "Subnet_ID" {
  value = aws_subnet.ProjectSubnet.id
}

output "Subnet_ID1" {
  value = aws_subnet.ProjectSubnet1.id
}
