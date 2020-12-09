variable "ami_identifier" {
  type = string
  description = "Amazon EC2 AMI Identifier"

  validation {
    condition = (alltrue([
      length(var.ami_identifier) > 4,
      substr(var.ami_identifier, 0, 4) == "ami-"
    ]))

    error_message = "The AMI Identifier is invalid."
  }
}

variable "machine_type" {
  type = string
  description = "Amazon EC2 Machine Type"

  validation {
    condition = (anytrue([
      # disallow instances of type `t2.`
      substr(var.machine_type, 0, 3) != "t2.",

      # allow instances of type `t3.`
      substr(var.machine_type, 0, 3) == "t3.",
    ]))

    error_message = "The Machine Type is invalid."
  }
}
