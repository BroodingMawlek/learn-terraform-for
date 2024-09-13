#locals {
#  esc = "escape\n${var._2}"
#  json = jsonencode({
#    a = "hello"
#    b = "world"
#  })
#  choice = "Hello, %{if var.name != ""}${var.name}%{else}unnamed%{endif}!"
#}
#
#variable "name" {
#  default = "pop"
#}
#
#variable "_2" {
#  default = "_two"
#}