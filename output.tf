output "example_ip" {
  value = "${aws_eip.example_eip.public_ip}"
}
