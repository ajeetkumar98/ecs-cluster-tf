resource "aws_ecs_task_definition" "my_first_task_1" {
  family                    = "my-first-task-1"
  container_definitions     = <<DEFINITION
[
  {
    "name": "my-first-task-1",
    "image": "${aws_ecr_repository.my_first_ecr_repo.repository_url}",
    "essential": true,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ],
    "memory": 512,
    "cpu": 256,
    "networkMode": "awsvpc"
  }
]
  DEFINITION
  requires_compatibilities  = ["EC2"]
  network_mode              = "awsvpc"
  memory                    = 512
  execution_role_arn        = aws_iam_role.ecsTaskExecutionRole.arn
  cpu                       = 256
}
