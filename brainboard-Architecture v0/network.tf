resource "aws_vpc" "vpc_v0_c_c_c" {
  enable_dns_hostnames = true

  tags = {
    env      = "Development"
    archUUID = "bed79696-9f39-4afc-86c9-9261d0ea503c"
  }
}

resource "aws_security_group" "security_group" {
  vpc_id = aws_vpc.vpc_v0_c_c_c.id

  ingress {
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0",
      "::/0 ",
    ]
    security_groups = [
      "80",
      "443",
      "23456",
    ]
  }

  tags = {
    env      = "Development"
    archUUID = "bed79696-9f39-4afc-86c9-9261d0ea503c"
  }
}

resource "aws_lb" "alb_7" {

  tags = {
    env      = "Development"
    archUUID = "bed79696-9f39-4afc-86c9-9261d0ea503c"
  }
}

