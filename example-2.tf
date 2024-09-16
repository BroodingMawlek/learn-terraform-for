variable "set" {
  default = [
    { example = "two" },
    { example = "seventeen" },
    { example = "one" },
    { example = "two" },
  ]
}

variable "map2" {
  default = {
    1 = "one"
  }
}




locals {
  toset2 = toset([for e in var.set : e.example])
}