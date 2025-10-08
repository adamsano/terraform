terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 3.0.0"
    }
  }
}

provider "docker" {}

# -------- Exercice 4.1 : 1er conteneur via module --------
module "nginx1" {
  source         = "./modules/nginx"
  container_name = "nginx_mod_1"
  external_port  = 8081
  image_name     = "nginx:latest"
}

# -------- Exercice 4.2 : 2e conteneur via le même module --------
module "nginx2" {
  source         = "./modules/nginx"
  container_name = "nginx_mod_2"
  external_port  = 8082
  image_name     = "nginx:stable"
}
