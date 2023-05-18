# Jellyfin Server

## Dependencies

* **Packer**

* **Vagrant**

* **VirtualBox**

## Install

**Run**: `cd packer && packer build ubuntu.pkr.hcl`

**Set**: `MEDIA_PATH` in `vagrant/variables.rb` to the filepath of the media directory on host machine

## Usage

**Run**: `vagrant up`

The jellyfin server will then be running on port `8096`