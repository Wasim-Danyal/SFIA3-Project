# Provider

provider "aws" {
  region = "eu-west-1"
}

module "aws_vpc" {
  source   = "./VPC"
  VPC_Name = "ProjectVPC"
}

module "aws_securitygroup" {
  source        = "./SecurityGroup"
  name          = "Project Security Group"
  vpc_id        = module.aws_vpc.VPC_ID
}
