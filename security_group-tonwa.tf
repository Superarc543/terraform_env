## 安全組 糖蛙全開(對OA或IDC的IP)
resource "aws_security_group" "sg-tonwa" {
  name        = "Allow-TONWA"
  description = "Allow All Port From OA & IDC(QA)"
  vpc_id      = aws_vpc.production.id

  ingress {
    description = "Allow-OA-ALL"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["59.124.242.150/32"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "sg-tonwa"
    description = "OA,IDC"
  }
}
