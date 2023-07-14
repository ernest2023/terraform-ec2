variable "ami_id" {
  description = "AMI ID"
  default     = "ami-06ca3ca175f37dd66"
}

variable "subnet_pub1" {
  description = "Public Subnet 1"
  default     = "subnet-0ce19d0381d5abc5d"
}
resource "aws_instance" "first_instance" {
  instance_type = "t2.medium"
  ami           = var.ami_id
  subnet_id     = var.subnet_pub1
  tags = {
    "Name" = "jenkins"
  }
  key_name = "deploykey"
}
variable "their_id" {
  description = "AMI ID"
  default     = "ami-06ca3ca175f37dd66"
}

variable "people_pub1" {
  description = "Public Subnet 1"
  default     = "subnet-0ce19d0381d5abc5d"
}
resource "aws_instance" "fifth_instance" {
  instance_type = "t2.medium"
  ami           = var.ami_id
  subnet_id     = var.subnet_pub1
  tags = {
    "Name" = "docker"
  }
  key_name = "deploykey"
}
variable "your_id" {
  description = "AMI ID"
  default     = "ami-06ca3ca175f37dd66"
}
variable "our_id" {
  description = "AMI ID"
  default     = "ami-06ca3ca175f37dd66"
}

resource "aws_instance" "third_instance" {
  instance_type = "t2.medium"
  ami           = var.ami_id
  subnet_id     = var.subnet_pub1
  tags = {
    "Name" = "sonaqube"
  }
  key_name = "deploykey"
}
variable "our_pub1" {
  description = "Public Subnet 1"
  default     = "subnet-0ce19d0381d5abc5d"
}
variable "kind_pub1" {
  description = "Public Subnet 1"
  default     = "subnet-0ce19d0381d5abc5d"
}
resource "aws_instance" "fouth_instance" {
  instance_type = "t2.medium"
  ami           = var.ami_id
  subnet_id     = var.subnet_pub1
  tags = {
    "Name" = "maven"
  }
  key_name = "deploykey"
}

variable "semi_id" {
  description = "AMI ID"
  default     = "ami-06ca3ca175f37dd66"
}

variable "unit_pub2" {
  description = "public Subnet 1"
  default     = "subnet-0ce19d0381d5abc5d"
}
resource "aws_instance" "second_instance" {
  instance_type = "t2.medium"
  ami           = var.ami_id
  subnet_id     = var.subnet_pub1
  tags = {
    "Name" = "nexus"
  }
  key_name = "deploykey"
}
resource "aws_vpc" "mine" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_subnet" "mine" {
  vpc_id     = aws_vpc.mine.id
  cidr_block = "10.0.102.0/24"

  tags = {
    Name = "Mine"
  }

}



