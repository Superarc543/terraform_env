## 安全組 Rabbit MQ
resource "aws_security_group" "sg-rabbitmq" {
  name        = "service-sg-rabbitmq"
  description = "sg-Rabbit MQ"
  vpc_id      = aws_vpc.production.id

  ingress {
    description = "Allow-VPC-5672"
    from_port   = 5672
    to_port     = 5672
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/16"]
  }
    ingress {
    description = "Allow-VPC-15672"
    from_port   = 15672
    to_port     = 15672
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
    Name = "sg-rabbitmq"
  }
}
