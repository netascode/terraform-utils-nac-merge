locals {
  user_defaults = { "defaults" : try(lookup(yamldecode(data.utils_yaml_merge.model.output), "defaults"), {}) }
}

data "utils_yaml_merge" "model" {
  input = var.yaml_strings
}

data "utils_yaml_merge" "defaults" {
  input = [file("${path.module}/defaults/defaults.yaml"), yamlencode(local.user_defaults)]
}
