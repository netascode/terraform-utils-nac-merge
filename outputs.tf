output "model" {
  description = "Model data."
  value       = yamldecode(data.utils_yaml_merge.model.output)
}

output "defaults" {
  description = "Default values."
  value       = yamldecode(data.utils_yaml_merge.defaults.output)
}
