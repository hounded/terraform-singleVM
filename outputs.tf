output "api-platform-ip" {
  value = "${google_compute_address.api-platform-ip.address}"
}

output "ssh" {
  value = "Run command to conect via ssh:\n$ gcloud compute --project ${var.project-name} ssh --zone ${var.zone} --project ${google_compute_instance.base-engine-instance.name}"
}
