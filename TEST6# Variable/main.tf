resource "aws_iam_user" "apply_deafult" {
  count = var.iam_user_count_apply_default
  name  = "${var.iam_user_name_apply_default}-${count.index}"
}

resource "aws_iam_user" "tfvars" {
  name  = var.iam_user_name_tfvars
}

resource "aws_iam_user" "export" {
  name  = var.iam_user_name_export
}
