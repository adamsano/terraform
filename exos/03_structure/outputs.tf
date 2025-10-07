output "container_name" {
  description = "Nom du conteneur créé"
  value       = docker_container.nginx.name
}

output "container_url" {
  description = "URL locale d'accès"
  value       = "http://localhost:${var.external_port}"
}

output "image_used" {
  description = "Image Docker utilisée"
  value       = docker_image.nginx.name
}
