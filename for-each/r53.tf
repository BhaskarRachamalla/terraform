resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense
  zone_id = "Z003596238BW1AYIQ2MGA"
  name    = each.key == "frontend" ? var.record_name : "${each.key}.${var.record_name}"
  type    = "A"
  ttl     = 1
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
 #if record already exists
  allow_overwrite = true
}