## 出網際網路 閘道
resource "aws_internet_gateway" "gw_production" {
  vpc_id = aws_vpc.production.id

  tags = {
    Name = "gw_production"
    VPC  = "production-10.1.0.0/16"
  }
}
## 路由表
resource "aws_route_table" "production_routetable" {
  vpc_id = aws_vpc.production.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_production.id
  }

  tags = {
    Name   = "production_routetable"
    VPC    = "production-10.1.0.0/16"
    IGW    = "gw_production"
    SUBNET = "10.1.1.0/24,10.1.2.0/24,10.1.3.0/24"

  }
}
##路由表  子網路關聯-a1
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.a1.id
  route_table_id = aws_route_table.production_routetable.id
}
##路由表  子網路關聯-b2
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.b2.id
  route_table_id = aws_route_table.production_routetable.id
}
##路由表  子網路關聯-c3
resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.c3.id
  route_table_id = aws_route_table.production_routetable.id
}
##指定 主-路由表
resource "aws_main_route_table_association" "rt-internet" {
  vpc_id         = aws_vpc.production.id
  route_table_id = aws_route_table.production_routetable.id
}