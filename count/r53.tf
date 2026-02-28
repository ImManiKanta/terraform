/* resource "aws_route53_record" "www" {
  count = 3
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domainname}" #mongodb.manidevops.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}
 */

resource "aws_route53_record" "www" {
  count = 3
  zone_id = var.zone_id
  name    = var.instances[count.index] != "frontend" ? "${var.instances[count.index]}.${var.domainname}" : "${var.domainname}" #mongodb.manidevops.online
  type    = "A"
  ttl     = 1
  records = var.instances[count.index] != "frontend"  ? [aws_instance.example[count.index].private_ip] : [aws_instance.example[count.index].public_ip]
} 