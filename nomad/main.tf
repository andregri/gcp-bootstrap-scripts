resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-standard-2"
  zone         = var.zone

  tags = ["nomad"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "node"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = file(var.startup-script)
}