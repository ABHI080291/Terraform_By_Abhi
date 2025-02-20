#creating ssh.key.
resource "aws_key_pair" "Abhi" {
  key_name   = "Abhi"
  public_key = file("${path.module}/id_rsa.pub")
}


resource "aws_instance" "web" {
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.Abhi.key_name}"

  tags = {
    Name = "Firsttf"
  }
}
