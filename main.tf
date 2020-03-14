resource "google_compute_instance" "gcp_compute" {
  count          = var.count_compute
  project        = var.project
  name           = "vm-${var.project}-sea1-${var.compute_name}-${count.index + 1}"
  machine_type   = var.compute_type
  zone           = var.compute_zones[count.index % 3]
  can_ip_forward = "false"

  boot_disk {
    initialize_params {
      image = var.images_name
      size  = var.size_root_disk
      type  = var.type_root_disk
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  labels = {
    env           = var.environment
    hostname      = var.compute_name
    service_group = var.service_group
    service_name  = var.compute_name
    service_type  = var.service_type
  }

  tags = [var.environment, var.service_group, "vm-${var.project}-sea1-${var.compute_name}-${count.index + 1}"]

  allow_stopping_for_update = true

  min_cpu_platform = "Intel Skylake"
}
