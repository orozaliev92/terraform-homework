
resource "aws_instance" "web2" {
  ami           = "ami-05f991c49d264708f"
  instance_type = "t2.micro"
  subnet_id = "subnet-0ff847db87bf30dc3"
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh")
  

  tags = {
    Name = "Web2"
  }
}