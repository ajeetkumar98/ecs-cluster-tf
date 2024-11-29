resource "aws_default_vpc" "ecs-vpc-ajeet" {
  tags = {
    Name = "ECS-VPC-AJEET"
  }
}

resource "aws_default_subnet" "ecs_az1" {
  availability_zone = "us-east-1a"

  tags = {
    Name = "Default subnet for us-east-1a"
  }
}

resource "aws_default_subnet" "ecs_az2" {
  availability_zone = "us-east-1b"

  tags = {
    Name = "Default subnet for us-east-1b"
  }
}

resource "aws_default_subnet" "ecs_az3" {
  availability_zone = "us-east-1c"

  tags = {
    Name = "Default subnet for us-east-1c"
  }
}
