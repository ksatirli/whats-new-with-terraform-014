data "terraform_remote_state" "from_013" {
  backend = "local"

  config = {
    path = "terraform-013-state/terraform.tfstate"
  }
}

data "terraform_remote_state" "from_014" {
  backend = "local"

  config = {
    path = "terraform-014-state/terraform.tfstate"
  }
}


output "terraform_013_pet" {
  value = data.terraform_remote_state.from_013.outputs.pet_identifier
}

output "terraform_014_pet" {
  value = data.terraform_remote_state.from_014.outputs.pet_identifier
}
