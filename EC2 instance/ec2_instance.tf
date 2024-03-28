#write the ami according to the region and assign public key yo the ec2 insance  
resource "aws_instance" "hi" {
  ami    = "${var.image_id}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = [ "${aws_security_group.my_sg.id}" ]
  key_name = "${aws_key_pair.ec2-key.key_name}"
  user_data = file("${path.module}/install.sh")
  tags = {
    Name = "aws-1st"
  }
}