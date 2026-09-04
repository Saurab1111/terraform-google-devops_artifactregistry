resource "google_artifact_registry_repository" "this" {
  provider = google

  project       = var.project_id
  location      = var.location
  repository_id = var.repository_id
  description   = var.description
  format        = var.format
  mode          = var.mode
  labels        = var.labels

  kms_key_name = var.kms_key_name != "" ? var.kms_key_name : null

  cleanup_policy_dry_run = var.cleanup_policy_dry_run
}
