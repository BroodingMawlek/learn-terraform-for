variable "set" {
  default = [
    { example = "two" },
    { example = "seventeen" },
    { example = "one" },
    { example = "two" },
  ]
}

locals {
  toset2 = toset([for e in var.set : e.example])
}
