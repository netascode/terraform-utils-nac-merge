terraform {
  required_version = ">= 1.0.0"

  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    utils = {
      source  = "netascode/utils"
      version = ">= 0.2.4"
    }
  }
}

module "main" {
  source = "../.."

  yaml_strings = [
    "root:\n  child1: value1",
    "root:\n  child2: value2"
  ]
}

resource "test_assertions" "main" {
  component = "main"

  equal "model" {
    description = "model"
    got         = module.main.model
    want = {
      "root" = {
        "child1" = "value1"
        "child2" = "value2"
      }
    }
  }
}
