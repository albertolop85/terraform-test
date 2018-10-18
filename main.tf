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
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
  depends_on = ["aws_s3_bucket.example_bucket"]
}

resource "aws_eip" "example_eip" {
  instance = "${aws_instance.example_instance.id}"
}
