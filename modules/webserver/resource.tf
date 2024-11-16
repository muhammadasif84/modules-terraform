resource "aws_key_pair" "key-main" {
  key_name = var.key_name
  public_key = var.key
}



resource "aws_instance" "instance-1" {
  ami = var.image_id
  instance_type = var.instance_type
  key_name = aws_key_pair.key-main.key_name
 
}