resource "google_compute_firewall" "ssh" {
  name    = "${var.network}-firewall-ssh"
  network = "${google_compute_network.network-01.name}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["${var.network}-firewall-ssh"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "http" {
  name    = "${var.network}-firewall-http"
  network = "${google_compute_network.network-01.name}"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags   = ["${var.network}-firewall-http"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "https" {
  name    = "${var.network}-firewall-https"
  network = "${google_compute_network.network-01.name}"

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  target_tags   = ["${var.network}-firewall-https"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "api-admin" {
  name    = "${var.network}-firewall-api-admin"
  network = "${google_compute_network.network-01.name}"

  allow {
    protocol = "tcp"
    ports    = ["81"]
  }

  target_tags   = ["${var.network}-firewall-api-admin"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "api-admin-https" {
  name    = "${var.network}-firewall-api-admin-https"
  network = "${google_compute_network.network-01.name}"

  allow {
    protocol = "tcp"
    ports    = ["444"]
  }

  target_tags   = ["${var.network}-firewall-api-admin-https"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "api-endpoint" {
  name    = "${var.network}-firewall-api-endpoint"
  network = "${google_compute_network.network-01.name}"

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

  target_tags   = ["${var.network}-firewall-api-endpoint"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "api-endpoint-https" {
  name    = "${var.network}-firewall-api-endpoint-https"
  network = "${google_compute_network.network-01.name}"

  allow {
    protocol = "tcp"
    ports    = ["8443"]
  }

  target_tags   = ["${var.network}-firewall-api-endpoint-https"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "icmp" {
  name    = "${var.network}-firewall-icmp"
  network = "${google_compute_network.network-01.name}"

  allow {
    protocol = "icmp"
  }

  target_tags   = ["${var.network}-firewall-icmp"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "postgresql" {
  name    = "${var.network}-firewall-postgresql"
  network = "${google_compute_network.network-01.name}"

  allow {
    protocol = "tcp"
    ports    = ["5432"]
  }

  target_tags   = ["${var.network}-firewall-postgresql"]
  source_ranges = ["0.0.0.0/0"]
}

//resource "google_compute_firewall" "firewall-openshift-console" {
//  name    = "${var.network}-firewall-openshift-console"
//  network = "${google_compute_network.network-01.name}"
//
//  allow {
//    protocol = "tcp"
//    ports    = ["8443"]
//  }
//
//  target_tags   = ["${var.network}-firewall-openshift-console"]
//  source_ranges = ["0.0.0.0/0"]
//}

//resource "google_compute_firewall" "firewall-secure-forward" {
//  name    = "${var.network}-firewall-secure-forward"
//  network = "${google_compute_network.network-01.name}"
//
//  allow {
//    protocol = "tcp"
//    ports    = ["24284"]
//  }
//
//  target_tags   = ["${var.network}-firewall-secure-forward"]
//  source_ranges = ["0.0.0.0/0"]
//}
