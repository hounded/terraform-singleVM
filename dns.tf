resource "google_dns_managed_zone" "primary" {
  name        = "api-platform-zone"
  dns_name    = "offthegrind.co.nz."
  description = "DNS zone for the api-platform domain"
}

resource "google_dns_record_set" "a_api-platform" {
  name = "${google_dns_managed_zone.primary.dns_name}"
  type = "A"
  ttl  = 600

  managed_zone = "${google_dns_managed_zone.primary.name}"

  rrdatas = ["${google_compute_address.api-platform-ip.address}"]
}