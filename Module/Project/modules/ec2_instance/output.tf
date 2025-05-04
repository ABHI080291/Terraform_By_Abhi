output "ec2_public_ip" {
  value = aws_instance.MyTerra.public_ip
}

output "ec2_private_ip" {
  value = aws_instance.MyTerra.private_ip
}

