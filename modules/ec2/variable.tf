variable "instance_count" {
    default = 1
}

variable "instance_type" {
    default = "c7i-flex.large"
}

variable "instance_name" {
    default = "Jenkins-Training"
}

variable "public_key" {
  description = "SSH public key for EC2 access"
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHkc8go/R/OI8v5S7pyR625dilCCGDxbVHrp8ioA/swk divya@Divya"
}
