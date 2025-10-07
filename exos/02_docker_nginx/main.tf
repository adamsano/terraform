terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Image Docker Nginx
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Conteneur Nginx
resource "docker_container" "nginx" {
  name  = "nginx_server"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.external_port
  }
}
