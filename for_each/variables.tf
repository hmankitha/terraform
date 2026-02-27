variable "instance"{
    type = map
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
        user = "t3.micro"
        shipping = "t3.small"
    }
}


variable "zone_id" {
    default = "Z024104633KIGU2B6QRW"
}

variable "domain_name" {
    default = "ankitha.online"
}