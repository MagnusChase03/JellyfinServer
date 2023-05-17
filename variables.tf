variable "port" {

    description = "Port to run jellyfin on"
    type = number
    default = 8096

}

variable "media" {

    description = "Path to media directory on host"
    type = string

}