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

variable "instance_names" {
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
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIED2c7XBEW/tek8/5Wc+O2DTtiz/gOyfjzoC6ekhiykM divya@Divya"
}
