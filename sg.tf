resource "aws_security_group" "sgname" {
name = var.sgname
description = "Allow SSH HTTP HTTPS"
ingress {
  description = "SSH"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = var.cidr
}
  ingress {
    description = "HTTP"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = var.cidr
  }
  egress {
    from_port = 0
    to_port = 0
protocol = "-1"
  cidr_blocks = var.cidr
  }
  tags = {
    Name = var.sgname
  }
}
