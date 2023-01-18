<!-- BEGIN_TF_DOCS -->
# Merge Module Example

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

```hcl
module "nac_merge" {
  source  = "netascode/nac-merge/utils"
  version = ">= 0.1.0"

  yaml_strings = [
    "root:\n  child1: value1",
    "root:\n  child2: value2"
  ]
}
```
<!-- END_TF_DOCS -->