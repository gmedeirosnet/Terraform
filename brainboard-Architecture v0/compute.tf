resource "aws_instance" "t2_Jenkins" {
  instance_type = "t2.medium"

  security_groups = [
    aws_security_group.security_group.id,
  ]

  tags = {
    env      = "Development"
    archUUID = "bed79696-9f39-4afc-86c9-9261d0ea503c"
  }
}

