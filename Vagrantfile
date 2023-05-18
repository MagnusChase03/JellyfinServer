require_relative "variables.rb"

Vagrant.configure("2") do |config|

    config.vm.box = "./packer/output-ubuntu/package.box"

    config.vm.network "forwarded_port", guest: 8096, host:8096
    config.vm.synced_folder "./", "/vagrant", disabled: true
    config.vm.synced_folder MEDIA_PATH, "/app/media"

    config.vm.provision "file", source: "./vagrant/docker-compose.yml", destination: "/tmp/docker-compose.yml"
    config.vm.provision "shell", path: "./vagrant/install.sh"

end