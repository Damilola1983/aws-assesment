# Defining data of template_file
data "template_file" "init" {
  template = file("${path.module}/script-init.sh.tpl")

}

# Creating EC2 instance with init script
resource "aws_instance" "ec2-instance" {
  ami                         = var.ami_name
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.assesment.key_name
  vpc_security_group_ids      = ["${aws_security_group.dev-sg.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "${var.environment}-instance"
  }

  user_data = data.template_file.init.rendered
}

