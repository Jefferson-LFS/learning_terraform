data "aws_ami" "ubuntu" {
  most_recent = var.ami_most

  filter {
    name   = var.ami_filter_name
    values = var.ami_filter_values

  }

  owners = var.ami_owners
}

data "aws_ami" "ubuntu-west-2" {
  provider    = aws.west-2
  most_recent = var.ami_most

  filter {
    name   = var.ami_filter_name
    values = var.ami_filter_values

  }

  owners = var.ami_owners
}


resource "aws_instance" "web-west-2" {
  provider      = aws.west-2
  ami           = data.aws_ami.ubuntu-west-2.id
  instance_type = var.instance_type
  # key_name      = var.key_pair_name
  tags = var.instance_tags

}
