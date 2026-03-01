output "instance_info" {
    value = data.aws_ami.joindevops.id
}

output "instance" {
    value = data.aws_instance.terraform_instance
}