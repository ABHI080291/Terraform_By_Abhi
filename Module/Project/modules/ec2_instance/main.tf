
resource "aws_instance" "MyTerra" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  key_name = var.key_pair_value

}
