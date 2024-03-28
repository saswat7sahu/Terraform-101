variable "iports" {
    type = list(object({
    from_port = number
    to_port = number
    protocol = string
  }))

  default = [
    {
      from_port = 80
      to_port = 80
      protocol = "http"
    },
    {
      from_port = 22
      to_port = 22
      protocol = "ssh"
    }
  ]
}
variable "oports" {
    type = list(object({
    from_port = number
    to_port = number
    protocol = string
  }))

  default = [
    {
      from_port = 80
      to_port = 80
      protocol = "http"
    }
  ]
}
variable "image_id" {
  type = string
}
variable "instance_type" {
  type = string
}