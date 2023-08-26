data "aws_ami" "ubuntu" {
  most_recent = var.ami_most

  filter {
    name   = var.ami_filter_name
    values = var.ami_filter_values

  }

  owners = var.ami_owners
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.key_pair_name
  tags          = var.instance_tags

}
