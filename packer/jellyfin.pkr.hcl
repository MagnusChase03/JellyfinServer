source "vagrant" "jellyfin" {

  communicator = "ssh"
  source_path = "bento/ubuntu-22.10"
  provider = "virtualbox"
  add_force = true

}

build {

  sources = ["source.vagrant.jellyfin"]

  provisioner "file" {

    source = "./install.sh"
    destination = "/tmp/install.sh"

  }

  provisioner "shell" {

    inline = [

      "bash /tmp/install.sh"

    ]

  }

  provisioner "file" {

    source = "./docker-compose.yml"
    destination = "/tmp/docker-compose.yml"

  }

  provisioner "shell" {

    inline = [

      "sudo mkdir /docker",
      "sudo mv /tmp/docker-compose.yml /docker",
      "sudo chown -R vagrant:vagrant /docker",

    ]

  }

}
