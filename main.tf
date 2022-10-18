provider "aws" {
    access_key = var.aws-secert
    secret_key = var.aws-secert
}

resource "ec2" "web-server-01" {
  
}

resource "ec2" "jenkins-server-01" {
  
}

resource "vpc" "my-server-vpc" {
  
}

resource "sg" "my-sg" {
  
}