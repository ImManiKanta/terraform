variable "instances" {
  type = list
  default = ["mongodb", "frontend" , "redis"]
}

variable "zone_id" {
  default =   "Z00114331R4EBNTWP3VT8"
}

variable "domainname" {
  default =   "manidevops.online"
}
