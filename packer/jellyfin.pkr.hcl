source "vagrant" "jellyfin" {

  communicator = "ssh"
  source_path = "bento/ubuntu-22.10"
  provider = "virtualbox"
  add_force = true

}

build {

  sources = ["source.vagrant.jellyfin"]

  provisioner "file" {

    source = "./scripts/"
    destination = "/tmp"

  }

  provisioner "file" {

    source = "./service/"
    destination = "/tmp"

  }

  provisioner "shell" {

    inline = [

      "bash /tmp/install.sh"

    ]

  }

}
