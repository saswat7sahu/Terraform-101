
#create key pair 
resource "aws_key_pair" "ec2-key" {
  key_name   = "ec2key"
  public_key = file("${path.module}/filename")

}