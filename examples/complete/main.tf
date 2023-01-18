module "nac_merge" {
  source  = "netascode/nac-merge/utils"
  version = ">= 0.1.0"

  yaml_strings = [
    "root:\n  child1: value1",
    "root:\n  child2: value2"
  ]
}
