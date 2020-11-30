output "pet_identifier" {
  value = "${var.pet_identifier_prefix}-${random_string.pet_identifier.result}"
}
