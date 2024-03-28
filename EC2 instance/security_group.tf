#create a security group 
resource "aws_security_group" "my_sg" {
  name        = "my_sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  dynamic "ingress" {
    for_each = var.iports
    content {
      from_port = ingress.value["from_port"]
      to_port = ingress.value["to_port"]
      protocol = ingress.value["protocol"]
    }
  }
  dynamic "egress" {
    for_each = var.oports
    content {
      from_port = egress.value["from_port"]
      to_port = ingress.value["to_port"]
      protocol = ingress.value["protocol"]
    }
  }
 
  tags = {
    Name = "my_sg"
  }
}