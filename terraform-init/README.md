# CLI Enhancement: Provider Lock files

From the Terraform `0.14` [CHANGELOG](https://github.com/hashicorp/terraform/blob/v0.14/CHANGELOG.md):

> `terraform init` will now generate a lock file in the configuration directory which you can check in to your version control so that Terraform can make the same version selections in future.



* Terraform documentation: [Command: init](https://www.terraform.io/docs/commands/init.html)
* GitHub PR / Issue: [#26524](https://github.com/hashicorp/terraform/pull/26524)

---

## What's new

Note the [.terraform.lock.hcl](https://github.com/ksatirli/whats-new-with-terraform-014/blob/main/terraform-init/.terraform.lock.hcl) file in this directory and compare it to the [terraform.tf](https://github.com/ksatirli/whats-new-with-terraform-014/blob/main/terraform-init/terraform.tf) file in the same directory.

The lock file (`.terraform.lock.hcl`) contains an overview of all the providers and their respective hashes and any other relevant information.

⚠️ Please note: for the purpose of this showcase, only the [random Provider](https://registry.terraform.io/providers/hashicorp/random/latest) is used.
