resource "google_compute_instance" "ansible-node-02" {
  project      = var.gcp_project
  name         = var.gce-ansible-node-02.gce_instance_name
  hostname     = var.gce-ansible-node-02.gce_hostname
  machine_type = var.gce-ansible-node-02.gce_machine_type
  zone         = var.gce-ansible-node-02.gce_zones
  tags         = ["ansible-server"]
  boot_disk {
    initialize_params {
      image = var.gce-ansible-node-02.gce_boot_disk_image
      size  = var.gce-ansible-node-02.gce_boot_disk_size
      labels = {
        name = "ansible-node"
        sever = "remote-node"
      }
    }
  }

  network_interface {
    network = var.gce-ansible-node-02.gce_vpc_nw
    subnetwork = var.gce-ansible-node-02.gce_snw

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}