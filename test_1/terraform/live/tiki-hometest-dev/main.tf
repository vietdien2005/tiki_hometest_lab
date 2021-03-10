resource "google_compute_instance" "hometest_lab" {
  boot_disk {
    auto_delete = false
    source      = google_compute_disk.hometest_lab_disk.self_link
  }

  can_ip_forward            = "false"
  allow_stopping_for_update = "true"
  deletion_protection       = "false"
  enable_display            = "false"
  machine_type              = var.vm_type

  name = var.instance_name

  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.hometest_lab_public.address
    }
  }

  project = var.google_project_id

  scheduling {
    automatic_restart   = "true"
    on_host_maintenance = "MIGRATE"
    preemptible         = "false"
  }

  metadata = {
    ssh-keys = <<EOT
${var.ssh_user_test}:${var.ssh_key_test}
EOT
  }

  tags = ["docker"]
  zone = var.zone_sing_b

  provisioner "local-exec" {
    command = <<EOT
storm delete ${self.name}
storm add ${self.name} ${var.ssh_user_admin}@${self.network_interface.0.access_config.0.nat_ip}
ansible-playbook ansible/playbooks/bootstrap.yml -e "host=${self.name}"
ansible-playbook ansible/playbooks/docker.yml -e "host=${self.name}"
EOT
  }
}

resource "google_compute_disk" "hometest_lab_disk" {
  image                     = var.os_image
  name                      = var.instance_name
  physical_block_size_bytes = "4096"
  project                   = var.google_project_id
  size                      = "30"
  type                      = "pd-standard"
  zone                      = var.zone_sing_b
}

resource "google_compute_address" "hometest_lab_public" {
  name   = "hometest-public"
  region = var.region
}
