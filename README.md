<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-utils-nac-merge/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-utils-nac-merge/actions/workflows/test.yml)

# Terraform Merge Module

A Terraform module to merge the content of several YAML files into a single Terraform data structure.

This module is part of the Cisco [*Nexus as Code*](https://cisco.com/go/nexusascode) project. Its goal is to allow users to instantiate network fabrics in minutes using an easy to use, opinionated data model. It takes away the complexity of having to deal with references, dependencies or loops. By completely separating data (defining variables) from logic (infrastructure declaration), it allows the user to focus on describing the intended configuration while using a set of maintained and tested Terraform Modules without the need to understand the low-level ACI object model. More information can be found here: https://cisco.com/go/nexusascode.

A comprehensive example using this module is available here: https://github.com/netascode/nac-aci-comprehensive-example

## Examples

```hcl
module "nac_merge" {
  source  = "netascode/nac-merge/utils"
  version = ">= 0.1.0"

  yaml_strings = [
    "root:\n  child1: value1",
    "root:\n  child2: value2"
  ]
}

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_utils"></a> [utils](#requirement\_utils) | >= 0.2.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_utils"></a> [utils](#provider\_utils) | >= 0.2.4 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_yaml_strings"></a> [yaml\_strings](#input\_yaml\_strings) | List of YAML strings to be merged into a single model. | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_model"></a> [model](#output\_model) | Model data. |
| <a name="output_defaults"></a> [defaults](#output\_defaults) | Default values. |

## Resources

| Name | Type |
|------|------|
| [utils_yaml_merge.defaults](https://registry.terraform.io/providers/netascode/utils/latest/docs/data-sources/yaml_merge) | data source |
| [utils_yaml_merge.model](https://registry.terraform.io/providers/netascode/utils/latest/docs/data-sources/yaml_merge) | data source |
<!-- END_TF_DOCS -->