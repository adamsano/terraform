output "nginx1_url" {
  value       = module.nginx1.url
  description = "URL du 1er conteneur"
}

output "nginx2_url" {
  value       = module.nginx2.url
  description = "URL du 2e conteneur"
}
