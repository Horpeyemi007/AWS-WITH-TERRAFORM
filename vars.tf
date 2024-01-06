variable "REGION" {
  type    = string
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "ZONE2" {
  default = "us-east-1b"
}

variable "ZONE3" {
  default = "us-east-1c"
}

variable "PUB_KEY" {
  default = "web02_key.pub"
}

variable "PRIV_KEY" {
  default = "web02_key"
}

variable "VPC_NAME" {
  default = "banking-vpc"
}

variable "VPC_CIDR" {
  default = "10.0.0.0/16"
}

variable "PUB_SUB1_CIDR" {
  default = "10.0.1.0/24"
}

variable "PUB_SUB2_CIDR" {
  default = "10.0.2.0/24"
}

variable "PUB_SUB3_CIDR" {
  default = "10.0.3.0/24"
}

