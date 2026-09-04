variable "project_id" {
  type        = string
  description = "GCP project ID where the Artifact Registry repository will be created."
}

variable "location" {
  type        = string
  description = "GCP region for the Artifact Registry repository."
  default     = "asia-south1"
}

variable "repository_id" {
  type        = string
  description = "Unique Artifact Registry repository identifier."
  default     = "app-artifacts"
}

variable "description" {
  type        = string
  description = "Description for the Artifact Registry repository."
  default     = "Artifact Registry repository managed by Terraform."
}

variable "format" {
  type        = string
  description = "Artifact package format."
  default     = "DOCKER"

  validation {
    condition = contains(["DOCKER", "MAVEN", "NPM", "PYTHON", "APT", "YUM"], var.format)
    error_message = "Supported formats are DOCKER, MAVEN, NPM, PYTHON, APT, and YUM."
  }
}

variable "mode" {
  type        = string
  description = "Repository mode."
  default     = "STANDARD_REPOSITORY"

  validation {
    condition = contains(["STANDARD_REPOSITORY", "REMOTE_REPOSITORY", "VIRTUAL_REPOSITORY"], var.mode)
    error_message = "Supported modes are STANDARD_REPOSITORY, REMOTE_REPOSITORY, and VIRTUAL_REPOSITORY."
  }
}

variable "labels" {
  type        = map(string)
  description = "Labels to apply to the repository."
  default = {
    environment = "prod"
    managed-by  = "terraform"
  }
}

variable "kms_key_name" {
  type        = string
  description = "Optional CMEK key resource name for repository encryption."
  default     = ""
}

variable "cleanup_policy_dry_run" {
  type        = bool
  description = "Enables cleanup policy dry run mode."
  default     = true
}
