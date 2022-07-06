resource "aws_key_pair" "assesment" {
  key_name   = "${var.environment}-key"
  public_key = var.public_key
}