resource "aws_route53_record" "names" {
  count   = "${length(var.registers)}"

  zone_id = "${var.zone_id}"
  name    = "${var.name}-${count.index}.${var.zone_name}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"
  records = ["${var.records}"]
}
