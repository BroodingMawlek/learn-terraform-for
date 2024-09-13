# testing console
variable "list" {
  default = ["a", "b", "c"]
}

variable "map" {
  type = map(string)
  default = {
    1 = "dave"
    2 = "bob"
    3 = "harry"
  }
}

variable "list2" {
  type = list
  default = ["z","b","z","a"]
}
locals {
  upper = [for s in var.list : upper(s)]
  map = [for k, v in var.map : length(k) + length(v)]
  index = [for i, v in var.list : "${i} is ${v}"]
  map_output = {for s in var.list : s => upper(s)}
  map_shuffle = {for k, v in var.map : v => k}
  filter = [for s in var.list : upper(s) if s != "a"]
  toset = toset([for e in var.list2 : e])
}

variable "users" {
  type = map(object({
    is_admin = bool
    owner    = string
  }))
  default = {
    ian = {
      owner    = "yes"
      is_admin = true
    }
    bob = {
      owner    = "no"
      is_admin = false
    }
  }
}

locals {
  admin_users = {
    for name, user in var.users : name => user
    if user.is_admin
  }
  regular_users = {
    for name, user in var.users : name => user
    if !user.is_admin
  }
}



