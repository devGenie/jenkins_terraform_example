variable "region" {
    default = "us-east-2"
}

variable "vpc-fullcidr" {
    default = "10.1.0.0/16"
    description = "VPC cidr range"
}

variable "Subnet-public" {
    default = "10.1.0.0/24"
    description = "Public subnet"
}

variable "Subnet-private" {
    default = "10.1.1.0/24"
    description = "Private subnet"
}

data "aws_ami" "jenkins_app_ami" {
    most_recent = true

    filter {
        name = "name"
        values = ["jenkins-*"]
    }
}