variable "instance_type" {
  description = "The type of the EC2 instance"
  type        = string
  default     = "t3.micro"
  
}

variable "subnet_id" {
  description = "Subnet for EC2 instance"
  type        = string
}