provider "google" {
  project = var.project
  credentials = var.key-path
}


module "network" {
  source = "../modules"
}
