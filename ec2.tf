
resource "aws_instance" "myec2" {
  ami           = "ami-02b92c281a4d3dc79"
  instance_type = "t2.micro"
}