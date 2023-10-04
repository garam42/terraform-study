terraform {
  backend "s3" {
    bucket = "kgr-2-tfstate"
    key    = "terraform.tfstate"
    region = "ap-northeast-2"
    dynamodb_table = "kgr-2-terra-lock"
  }

}