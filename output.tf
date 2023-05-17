output "port" {

    description = "Port jellyfin is running on"
    value = docker_container.jellyfin.ports[0].external

}