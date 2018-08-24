resource "aws_route53_record" "names" {
  zone_id = "${var.zone_id}"
  name    = "${var.name}.${var.zone_name}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"
  records = ["${var.records}"]
}
