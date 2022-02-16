## AZ一區
resource "aws_subnet" "a1" {
  vpc_id            = aws_vpc.production.id
  cidr_block        = "10.1.1.0/24"
  availability_zone = "ap-southeast-1a"

  tags = {
    Name      = "a1-10.1.1.0/24"
    AZ        = "ap-southeast-a1"
    IP_Ranger = "10.1.1.0/24"
    VPC       = "production-10.1.0.0/16"
  }
}
## AZ二區
resource "aws_subnet" "b2" {
  vpc_id            = aws_vpc.production.id
  cidr_block        = "10.1.2.0/24"
  availability_zone = "ap-southeast-1b"

  tags = {
    Name      = "b2-10.1.2.0/24"
    AZ        = "ap-southeast-1b"
    IP_Ranger = "10.1.2.0/24"
    VPC       = "production-10.1.0.0/16"
  }
}
## AZ三區
resource "aws_subnet" "c3" {
  vpc_id            = aws_vpc.production.id
  cidr_block        = "10.1.3.0/24"
  availability_zone = "ap-southeast-1c"

  tags = {
    Name      = "c3-10.1.3.0/24"
    AZ        = "ap-southeast-1c"
    IP_Ranger = "10.1.3.0/24"
    VPC       = "production-10.1.0.0/16"
  }
}