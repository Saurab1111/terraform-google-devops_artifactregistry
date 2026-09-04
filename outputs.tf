output "repository_id" {
  description = "Artifact Registry repository ID."
  value       = google_artifact_registry_repository.this.repository_id
}

output "repository_name" {
  description = "Full Artifact Registry repository resource name."
  value       = google_artifact_registry_repository.this.name
}

output "repository_create_time" {
  description = "Repository creation timestamp."
  value       = google_artifact_registry_repository.this.create_time
}

output "repository_update_time" {
  description = "Repository last update timestamp."
  value       = google_artifact_registry_repository.this.update_time
}
