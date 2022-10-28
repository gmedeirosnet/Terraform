resource "aws_instance" "t2_3" {

  tags = {
    env      = "Development"
    archUUID = "bed79696-9f39-4afc-86c9-9261d0ea503c"
  }
}

resource "aws_ebs_volume" "ebs_volume_4" {
  availability_zone = "us-west-1a"

  tags = {
    env      = "Development"
    archUUID = "bed79696-9f39-4afc-86c9-9261d0ea503c"
  }
}
