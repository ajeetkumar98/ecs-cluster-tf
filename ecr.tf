resource "aws_ecr_repository" "my_first_ecr_repo" {
  name = "my-first-ecr-repo-ajeet"
  tags = {
    Name="latest_ecr-ajeet"
  }
}
