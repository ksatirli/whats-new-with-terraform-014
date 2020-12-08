# Core Enhancement: Mark variables as sensitive

From the Terraform `0.14` [CHANGELOG](https://github.com/hashicorp/terraform/blob/v0.14/CHANGELOG.md):

> Terraform now supports marking input variables as sensitive, and will propagate that sensitivity through expressions that derive from sensitive input variables.

* Terraform documentation: [Input Variables](https://www.terraform.io/docs/configuration/variables.html#suppressing-values-in-cli-output)
* GitHub PR / Issue: [#26183](https://github.com/hashicorp/terraform/pull/26183)

---

## What's new

Run `terraform apply` to render the Terraform outputs. Then, inspect the contents of the outputs using either `terraform show` or `terraform output`.

Note how the output marks `pet_door_code` as a _sensitive value_ and does not display the value.
