variable "name" {
  type        = "string"
  description = "A record to use in your zone"
}

variable "zone_id" {
  type        = "string"
  description = "The zone id used for this record"
}

variable "zone_name" {
  type        = "string"
  description = "The name that will be used for this record"
}

variable "type" {
  type        = "string"
  description = "The type used for this record, it may be A, CNAME, etc"
}

variable "ttl" {
  type        = "string"
  description = "TTL"
  default     = "300"
}

variable "records" {
  type        = "list"
  description = "A record that will be used for DNS"
}
