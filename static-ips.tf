//resource "google_compute_global_address" "api-platform-ip" {
//  name = "api-platform-ip"
//  project = "${var.project-name}"
//}

resource "google_compute_address" "api-platform-ip" {
  name = "api-platform-ip"
  region = "${var.region}"
}