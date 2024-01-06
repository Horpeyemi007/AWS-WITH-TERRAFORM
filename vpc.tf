module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name           = var.VPC_NAME
  cidr           = var.VPC_CIDR
  azs            = [var.ZONE1, var.ZONE2, var.ZONE3]
  public_subnets = [var.PUB_SUB1_CIDR, var.PUB_SUB2_CIDR, var.PUB_SUB3_CIDR]

  tags = {
    terraform  = "true"
    enviroment = "testing"
  }

  vpc_tags = {
    Name = var.VPC_NAME
  }
}