Vagrant.configure("2") do |config|

    config.vm.box = "./packer/output-ubuntu/package.box"

    config.vm.network "forwarded_port", guest: 8096, host:8096
    config.vm.synced_folder "./", "/vagrant", disables: true

    config.vm.provision "file", source: "./docker-compose.yml", destination: "/tmp/docker-compose.yml"
    config.vm.provision "shell", path: "./install.sh"

end