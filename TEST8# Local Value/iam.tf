resource "aws_iam_user" "example1" {
  name = "test1"
  tags = local.common_tags
}

resource "aws_iam_user" "example2" {
  name = "test2"
  tags = local.common_tags
}