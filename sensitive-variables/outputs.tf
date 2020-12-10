# This output will display as normal
output "pet_door_mode" {
  value = var.pet_door_mode
}

# NOTE: This output will fail, as the parent variable (`var.pet_door_code`) is sensitive, but the output is not marked as sensitive
# output "pet_door_code_broken" {
#  value = var.pet_door_code
# }

output "pet_door_code" {
  value     = var.pet_door_code
  sensitive = true
}
