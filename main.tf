# VPC Module


# EC2 Module
module "tf-connect-ec2" {
  source        = "./modules/ec2-baseline"
  ami_name      = var.ami_name
  instance_type = var.instance_type
  public_key    = var.public_key
  environment   = var.environment
}
