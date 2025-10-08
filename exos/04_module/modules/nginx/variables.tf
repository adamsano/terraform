variable "container_name" {
  description = "Nom du conteneur"
  type        = string
}

variable "external_port" {
  description = "Port externe exposé"
  type        = number
}

variable "image_name" {
  description = "Image Docker à utiliser"
  type        = string
  default     = "nginx:latest"
}
