provider "google" {
  project = var.project
}

#Service Account
resource "google_service_account" "default" {
  account_id   = format("%s", "${var.service-name}-${var.project}")
  display_name = "GKE Service Account"
}
