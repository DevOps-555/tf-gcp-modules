# google_compute_instance.default:
resource "google_compute_instance" "ansible-01" {
    deletion_protection  = false
    enable_display       = false
    hostname             = var.gce-ansible-server-01.gce_hostname
    labels               = {
        "citrix" = ""
    }
    machine_type         = var.gce-ansible-server-01.gce_machine_type
    metadata             = {
        "foo"            = "bar"
        "startup-script" = "echo hi > /test.txt"
    }

    name                 = var.gce-ansible-server-01.gce_instance_name
    project              = var.gcp_project
    resource_policies    = []
    tags                 = [
        "ansible-node", "ansible"
    ]
    zone                 = var.gce-ansible-server-01.gce_zones

    boot_disk {
        auto_delete = true
        device_name = "persistent-disk-0"
        mode        = "READ_WRITE"

        initialize_params {
            image  = var.gce-ansible-server-01.gce_boot_disk_image
            labels = {
                "name"  = "ansible-node"
                "sever" = "remote-node"
            }
            size   = var.gce-ansible-server-01.gce_boot_disk_size
            type   = "pd-standard"
        }
    }

    network_interface {
        # name               = "nic0"
        network            = var.gce-ansible-server-01.gce_vpc_nw
        network_ip         = "10.156.0.5"
        queue_count        = 0
        stack_type         = "IPV4_ONLY"
        subnetwork         = var.gce-ansible-server-01.gce_snw

        access_config {
            network_tier = "PREMIUM"
        }
    }

    # scheduling {
    #     automatic_restart   = true
    #     min_node_cpus       = 0
    #     on_host_maintenance = "MIGRATE"
    #     preemptible         = false
    #     provisioning_model  = "STANDARD"
    # }

    # shielded_instance_config {
    #     enable_integrity_monitoring = true
    #     enable_secure_boot          = false
    #     enable_vtpm                 = true
    # }

    timeouts {}
}