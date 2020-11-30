resource "random_string" "pet_identifier" {
  length  = 4
  upper   = false
  number  = false
  special = false
}
