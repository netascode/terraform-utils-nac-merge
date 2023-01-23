locals {
  user_defaults = { "defaults" : try(lookup(yamldecode(data.utils_yaml_merge.model.output), "defaults"), {}) }
}

data "utils_yaml_merge" "model" {
  input = var.yaml_strings
}

module "defaults" {
  source  = "netascode/nac-defaults/null"
  version = "0.1.0"
}

data "utils_yaml_merge" "defaults" {
  input = [yamlencode(module.defaults.defaults), yamlencode(local.user_defaults)]
}
