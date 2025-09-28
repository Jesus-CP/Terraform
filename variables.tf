variable "sever_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "sever_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 1
}

variable "create_igw" {
  description = "Whether to create an Internet Gateway"
  type        = bool
  default     = true
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}