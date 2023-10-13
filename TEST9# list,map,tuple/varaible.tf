variable "example_string" {
  type    = string
  default = "hello"
}

variable "example_map" {
  type = map(string)
  default = {
    key1 = "value1"
    key2 = "value2"
  }
}