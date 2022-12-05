## 安全組 Redis-Server
resource "aws_security_group" "sg-redis" {
  name        = "service-sg-redis"
  description = "sg-redis-server"
  vpc_id      = aws_vpc.production.id

  ingress {
    description = "Allow-VPC-6379"
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/16"]
  }
  ingress {
    description = "Allow-VPC-6479"
    from_port   = 6479
    to_port     = 6479
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/16"]
  }
  ingress {
    description = "Allow-VPC-6579"
    from_port   = 6579
    to_port     = 6579
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/16"]
  }
  ingress {
    description = "Allow-VPC-6679"
    from_port   = 6679
    to_port     = 6679
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/16"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "sg-redis"
    Redis_Port = "6379,6479,6579,6679"
  }
}
