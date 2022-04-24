# aws services
# This is testing of git
# This is for Tag testing

provider "aws" {
  profile    = "${var.profile}"
  region     = "${var.region}"
}

resource "aws_instance" "DB-server" {
  ami           = "ami-0d058fe428540cd89"
  instance_type = "t2.micro"

  tags = {
    Name = "terraformtraining.com"
  }
}
