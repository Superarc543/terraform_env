## 負載平衡(L4) Network Load Blancer 對 Internet
## Portal(Game、Chat、Lobby、Tablegame...等)
resource "aws_lb" "nlb-portal" {
  name               = "nlb-portal"
  internal           = false
  load_balancer_type = "network"
  
  subnet_mapping {
    subnet_id            = aws_subnet.a1.id
  }
 subnet_mapping {
    subnet_id            = aws_subnet.b2.id
  }
  subnet_mapping {
    subnet_id            = aws_subnet.c3.id
  }

  enable_deletion_protection = false
  enable_cross_zone_load_balancing = true

  tags = {
    Name = "nlb-portal"
  }
}