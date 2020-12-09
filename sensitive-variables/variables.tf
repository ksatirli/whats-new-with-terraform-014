variable "pet_door_mode" {
  type        = string
  description = "Pet door mode"
  default     = "inward"
}

variable "pet_door_code" {
  type        = number
  description = "Numeric Pet door pass code"
  sensitive   = true
  default     = 2673
}
