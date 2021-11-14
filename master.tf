resource "yandex_compute_instance" "project" {
  name        = "kubernets-master"
  platform_id = "standard-v3"
  zone        = "ru-central1-b"

  scheduling_policy {
      preemptible = "true"
  }

  resources {
    cores  = 2
    core_fraction = 20
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id   //ubuntu 20.04 lts
      size = 20
    }
  }

  network_interface {
    subnet_id = var.network_subnet_id
    nat = true
  }

  metadata = {
    name = "ubuntu"
    ssh-keys = var.ssh-key
  }
}