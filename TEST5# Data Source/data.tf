data "aws_key_pair" "kgr-test-key" {
  key_name           = "kgr-test-key"
  #include_public_key = true
}