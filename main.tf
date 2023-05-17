terraform {

    required_providers {

        docker = {

            source = "kreuzwerker/docker"

            version = "3.0.2"

        }

    }

}

provider "docker" {}

resource "docker_image" "jellyfin" {

    name = "jellyfin"
    keep_locally = false

    build {

        context = "."

    }

}

resource "docker_volume" "jellyfin_config" {

    name = "jellyfin_config"

}

resource "docker_volume" "jellyfin_cache" {

    name = "jellyfin_cache"

}

resource "docker_container" "jellyfin" {

    name = "jellyfin"
    image = docker_image.jellyfin.image_id

    volumes {

        container_path = "/config"
        volume_name = "jellyfin_config"

    }

    volumes {

        container_path = "/cache"
        volume_name = "jellyfin_cache"

    }

    volumes {

        container_path = "/media"
        host_path = var.media

    }

    ports {

        internal = 8096
        external = var.port

    }

}