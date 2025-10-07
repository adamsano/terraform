variable "container_name" {
  description = "Nom du conteneur Nginx"
  type        = string
  default     = "nginx_server"
}

variable "external_port" {
  description = "Port externe exposé"
  type        = number
  default     = 8080
}

variable "image_name" {
  description = "Image Docker à utiliser"
  type        = string
  default     = "nginx:latest"
}
