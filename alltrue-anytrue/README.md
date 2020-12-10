# Enhancements: `alltrue` and `anytrue`

From the Terraform `0.14` [CHANGELOG](https://github.com/hashicorp/terraform/blob/v0.14/CHANGELOG.md):

> `alltrue` and `anytrue` are intended to allow evaluating boolean conditions, such as in variable validation blocks, across all of the items in a collection.

* Terraform documentation: [Function: `alltrue`](https://www.terraform.io/docs/configuration/functions/alltrue.html), [Function: `anytrue`](https://www.terraform.io/docs/configuration/functions/anytrue.html)
* GitHub PR(s) / Issue(s): [#25656](https://github.com/hashicorp/terraform/issues/25656), [#26498](https://github.com/hashicorp/terraform/issues/26498)

---

## What's new

Note the [variables](https://github.com/ksatirli/whats-new-with-terraform-014/blob/main/alltrue-anytrue/variables.tf) file in this directory and compare it to the [terraform.tf](https://github.com/ksatirli/whats-new-with-terraform-014/blob/main/terraform-init/terraform.tf) file in the same directory.

1.) The variables `ami_identifier` is tested against two rules, both of which must be truthy:

* the length of the string must be greater than four characters
* the string must start with `ami-`

2.) The variables `machine_type` is tested against two rules, of which at least _one_ must be truthy:

* the string may not start with `t2.`
* the string may start with `t3.`

⚠️ Please note: `alltrue` and `anytrue` are simple tests for variable content. They are _not_ meant as substitution for extensive governance checks.
