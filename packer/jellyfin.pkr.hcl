source "vagrant" "ubuntu" {

    communicator = "ssh"
    source_path = "ubuntu/jammy64"
    provider = "virtualbox"
    add_force = "true"

}

build {

    sources = [

        "source.vagrant.ubuntu"

    ]

    provisioner "shell" {

        script = "install.sh"

    }

}