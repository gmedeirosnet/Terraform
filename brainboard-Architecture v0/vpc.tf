resource "aws_vpc" "vpc_v0" {
  enable_dns_hostnames = true

  tags = {
    env      = "Development"
    archUUID = "bed79696-9f39-4afc-86c9-9261d0ea503c"
  }
}

