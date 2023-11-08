provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Anmol-K8s-Master" {
  ami                    = "ami-06aa3f7caf3a30282"
  instance_type          = "t2.medium"
  key_name               = "k8-anmol-keypair"
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = ["Anmol-SG"]
  tags = {
    Name = "Anmol-K8s-Master"
  }
}

resource "aws_instance" "Anmol-K8s-Slave-Node" {
  ami                    = "ami-06aa3f7caf3a30282"
  instance_type          = "t2.micro"
  key_name               = "k8-anmol-keypair"
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = ["Anmol-SG"]
  tags = {
    Name = "Anmol-K8s-Slave"
  }
}

