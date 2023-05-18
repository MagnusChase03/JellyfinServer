# Jellyfin Server

## Dependencies

* **Packer**

* **Vagrant**

* **VirtualBox**

## Install

**Run**: `cd packer && packer build jellyfin.pkr.hcl`

**OR**

Change the `config.vm.box` in `vagrant/Vagrantfile` to the **filepath** of the downloaded box from the `Releases` page

## Usage

**Run**: `cd vagrant && vagrant up`

The jellyfin server will then be running on port `8096`