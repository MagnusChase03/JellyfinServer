# Jellyfin Server

## Dependencies

* **Docker**

* **Terraform**

## Install

**Run**: `terraform init`

## Usage

**Run**: `terraform apply -var "media=[path]"` where `[path]` is the path to the media directory on the host machine

**Variables**:

* `media=[path]`

* `port=[port]` (optional). The jellyfin server will be run on designated port