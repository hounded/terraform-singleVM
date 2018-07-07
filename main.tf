resource "google_compute_instance" "base-engine-instance" {
  name = "base-engine"



  boot_disk {
    initialize_params {
      image = "${var.os["ubuntu-1604-lts"]}"
    }

  }

  ## for a setup having multiple instances of the same type, you can do
  ## the following, there would be 2 instances of the same configuration
  ## provisioned
  # count        = 2
  # name         = "${var.instance-name}-${count.index}"
  machine_type = "${var.vm_type["1point7gig"]}"

  zone = "${var.zone}"

  tags = [
    "${var.network}-firewall-ssh",
    "${var.network}-firewall-http",
    "${var.network}-firewall-https",
    "${var.network}-firewall-icmp",
    "${var.network}-firewall-postgresql",
    "${var.network}-firewall-api-endpoint",
    "${var.network}-firewall-api-endpoint-https",
    "${var.network}-firewall-api-admin",
    "${var.network}-firewall-api-admin-https",
  ]


  metadata {
    hostname = "engine.base.org"
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.network-01_subnetwork.name}"

    access_config {
      nat_ip = "${google_compute_address.api-platform-ip.address}"
      // Ephemeral IP
    }
  }
}
