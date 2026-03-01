variable "instance_type" {
   default={
    mongodb = "t3.micro"
    sql = "t3.small"
   }
}