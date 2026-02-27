variable "instance" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}


variable "zone_id" {
    default = "Z024104633KIGU2B6QRW"
}

variable "domain_name" {
    default = "ankitha.online"
}