resource "aws_instance" "web3" {
  ami           = "ami-05f991c49d264708f"
  instance_type = "t2.micro"
  subnet_id = "subnet-003dd0a126e7f04c8"
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh")
  

  tags = {
    Name = "Web3"
  }
}