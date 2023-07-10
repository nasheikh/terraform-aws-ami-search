# terraform-aws-ami-search

# How to use?

```hcl
module "ami-search" {
  source  = "git::https://github.com/nasheikh/terraform-aws-ami-search.git"
  os = "centos-7"
}

resource "aws_instance" "web" {
  ami = module.ami-search.ami_id
  instance_type = "t2.micro"

  tags {
    Name = "HelloWorld"
  }
}

```
