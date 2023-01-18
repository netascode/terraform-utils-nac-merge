output "model" {
  description = "Model data."
  value       = yamldecode(data.utils_yaml_merge.model.output)
}
