variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 4
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "c7i-flex.large"
}

variable "instance_name" {
/*  
  description = "Base name for EC2 instances"
  type        = string
  default     = "Jenkins-Training"
*/

type = map(string)
  default = {
    Ansible    = "Ansible"
    dev        = "dev"
    test       = "test"
    monitoring = "monitoring"
  }
}

variable "public_key" {
  description = "SSH public key for EC2 access"
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHkc8go/R/OI8v5S7pyR625dilCCGDxbVHrp8ioA/swk divya@Divya"
}
