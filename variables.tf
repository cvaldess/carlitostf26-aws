variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = map(string)
  default = {
    default = "10.0.0.0/16"
    dev     = "10.1.0.0/16"
    stage   = "10.2.0.0/16"
    prod    = "10.3.0.0/16"
  }
}

variable "subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = map(string)
  default = {
    default = "10.0.1.0/24"
    dev     = "10.1.1.0/24"
    stage   = "10.2.1.0/24"
    prod    = "10.3.1.0/24"
  }
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "eu-west-1a"
}
