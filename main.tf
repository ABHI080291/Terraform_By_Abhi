resource "aws_instance" "myserver" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"

    tags = {
        Name = "First-Tf"
    }
}
