resource "google_compute_instance" "default" {
  name         = "${var.project}-instance1"
  machine_type = "n1-standard-1"
  zone         = var.zone
  tags         = ["ssh", "http"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  metadata = {
    ssh-keys = "ubuntu:${file("${var.key-path}")}"
  }

  network_interface {
    subnetwork = google_compute_subnetwork.public_subnet.name
    access_config {
    }
  }
}
