# apply, default
variable "iam_user_count_apply_default" {
  type        = number
  description = "IAM user count"
}

variable "iam_user_name_apply_default" {
  type        = string
  default     = "default"
  description = "IAM user name"
}

# .tfvars

variable "iam_user_name_tfvars" {
  type        = string
  description = "IAM user name"
}

# export
variable "iam_user_name_export" {
  type        = string
  description = "IAM user name"
}
# export TF_VAR_iam_user_count=2 // linux  // 
#or
# set TF_VAR_iam_user_name_export=export //window 

# export는 되는데 set은 안된다..