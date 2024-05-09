locals {
  ami_id="ami-090252cbe067a9e58"
  sg_id = "vpc-0da8745e118f58a9d"
  #instance_type="t3.micro"
  instance_type= var.instance_name == "db" ? "t3.small":"t3.micro"
  tags = {
    Name = "db"
  }
}