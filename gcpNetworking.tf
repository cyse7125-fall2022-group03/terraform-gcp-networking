

provider "google" {
  project     = "csye71251"
  region      = "us-east1"
}

# Main VPC
# https://www.terraform.io/docs/providers/google/r/compute_network.html#example-usage-network-basic
resource "google_compute_network" "vpc_network"  {
  name                    = "vpc-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "new-subnet" {
  name          = "subnet-1"
  region        = "us-east1"
  network       = google_compute_network.vpc_network.id
  ip_cidr_range = "10.0.0.0/24"
  description   = "This modules creates a subnet on target VPC"
}