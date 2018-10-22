####################################
#######  Main Configuration
####################################

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-alberto"
  acl    = "private"
}

resource "aws_instance" "example_instance" {
  ami           = "${lookup(var.ami_by_region, var.region)}"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.example_instance.public_ip} > ip_address.txt"
  }

  depends_on = ["aws_s3_bucket.example_bucket"]
}

resource "aws_eip" "example_eip" {
  instance = "${aws_instance.example_instance.id}"
}
