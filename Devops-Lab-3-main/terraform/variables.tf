# Lab 3: Monitoring, Logging & DevSecOps - Variables

variable "replicas" {
  description = "Number of horizontally scaled demo application containers."
  type        = number
  default     = 2
  validation {
    condition     = var.replicas >= 1 && var.replicas <= 5
    error_message = "replicas must be between 1 and 5 for the lab host."
  }
}

variable "base_host_port" {
  type    = number
  default = 8180
}

variable "feature_greeting_v2" {
  type    = bool
  default = false
}
