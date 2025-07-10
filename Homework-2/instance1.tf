
resource "aws_instance" "web1" {
  ami           = "ami-05f991c49d264708f"
  instance_type = "t2.micro"
  subnet_id = "subnet-0053c723092f0949c"
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh")
  

  tags = {
    Name = "Web1"
  }
}




