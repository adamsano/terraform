output "container_name" {
  description = "Nom du conteneur Nginx déployé"
  value       = docker_container.nginx.name
}
