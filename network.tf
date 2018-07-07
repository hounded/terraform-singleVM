resource "google_compute_network" "network-01" {
  name = "${var.network}"
}

resource "google_compute_subnetwork" "network-01_subnetwork" {
  name          = "${var.network}-subnetwork-${var.subnetwork-region}"
  region        = "${var.subnetwork-region}"
  network       = "${google_compute_network.network-01.self_link}"
  ip_cidr_range = "10.0.0.0/16"
}
