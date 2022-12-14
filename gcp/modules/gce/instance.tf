resource "google_compute_instance" "test-instance" {
  project      = var.gcp_project
  name         = var.gce_instance_name
  hostname     = var.gce_hostname
  machine_type = var.gce_machine_type
  zone         = var.gce_zones
  tags         = ["ansible-server"]
  boot_disk {
    initialize_params {
      image = var.gce_boot_disk_image
      size  = var.gce_boot_disk_size
      labels = {
        my_label = "ansible-server"
      }
    }
  }

  network_interface {
    network = var.gce_vpc_nw
    subnetwork = var.gce_snw

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}