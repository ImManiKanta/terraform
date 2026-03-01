locals {
    ami_id = data.aws_ami.joindevops.id
    instance_name = "${var.name}-${var.env}"
    instance_type = "t3.small"
}