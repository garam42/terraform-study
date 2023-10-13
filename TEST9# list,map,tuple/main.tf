locals {
  single_element_string_list = [var.example_string] # ["hello"]
  single_element_map_list    = [var.example_map]    # [{"key1"="value1", "key2"="value2"}]
}

output "single_element_string_list" {
  value = local.single_element_string_list
}

output "single_element_map_list" {
  value = local.single_element_map_list
}