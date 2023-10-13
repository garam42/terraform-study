resource "aws_iam_user" "example" {
  name  = "test"
}

module "iam_user" {
  source = "./module/iam_user"
}


