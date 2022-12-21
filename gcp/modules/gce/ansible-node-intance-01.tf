resource "google_compute_instance" "ansible-node-02" {
  project      = var.gcp_project
  name         = var.gce-instance-03.gce_instance_name
  hostname     = var.gce-instance-03.gce_hostname
  machine_type = var.gce-instance-03.gce_machine_type
  zone         = var.gce-instance-03.gce_zones
  tags         = ["ansible-server"]
  boot_disk {
    initialize_params {
      image = var.gce-instance-03.gce_boot_disk_image
      size  = var.gce-instance-03.gce_boot_disk_size
      labels = {
        name = "ansible-server"
        sever = "remote-server"
      }
    }
  }

  network_interface {
    network = var.gce-instance-03.gce_vpc_nw
    subnetwork = var.gce-instance-03.gce_snw

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}