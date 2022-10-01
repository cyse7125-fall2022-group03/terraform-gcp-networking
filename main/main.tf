provider "google" {
  project = var.project
}


module "network" {
  source = "../modules"
}
