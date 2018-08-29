# Terraform module for AWS Route 53 for records

Terraform module to create one Route53 DNS records.

## Usage

```hcl
module "route53-records-puppetserver" {
  source = "git@github.com:raffaeldutra/terraform-module-route53-records"

  zone_id   = "XXXXXXXXXXXX"
  name      = "myrecord"
  zone_name = "example.solutions"
  type      = "A"
  ttl       = "300"
  records   = ["${aws_instance.instance.private_ip}"]
}
