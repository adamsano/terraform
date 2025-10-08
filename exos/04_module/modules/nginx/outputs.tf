output "name" {
  value = docker_container.this.name
}

output "image" {
  value = docker_image.this.name
}

output "url" {
  value = "http://localhost:${var.external_port}"
}
