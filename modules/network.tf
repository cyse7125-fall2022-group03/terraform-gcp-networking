resource "google_compute_network" "vpc" {
  name                    = "${var.project}-vpc"
  auto_create_subnetworks = "false"
}


resource "google_compute_firewall" "allow-http" {
  name    = "${var.project}-fw-allow-http"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  target_tags = ["http"]
  source_ranges = ["0.0.0.0/0"]

}

resource "google_compute_firewall" "allow-ssh" {
  name    = "${var.project}-fw-allow-ssh"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  target_tags = ["ssh"]
  source_ranges = ["0.0.0.0/0"]

}

resource "google_compute_subnetwork" "public_subnet" {
  name          = "${var.project}-pub-subnet"
  ip_cidr_range = var.ue1_public_subnet
  network       = google_compute_network.vpc.name
  depends_on    = [google_compute_network.vpc]
  region        = var.region
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = "${var.project}-private-subnet"
  ip_cidr_range = var.ue1_private_subnet
  network       = google_compute_network.vpc.name
  depends_on    = [google_compute_network.vpc]
  region        = var.region
}
