resource "aws_vpc" "production" {
  cidr_block           = "10.1.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name = "production-10.1.0.0/16"
    IP   = "10.1.0.0/16"
  }
}