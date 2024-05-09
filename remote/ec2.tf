
# resource <resource-type> <resource-name>
resource "aws_instance" "db" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0631b424ec4551f94"]
    instance_type = "t3.micro"

    tags = {
        Name = "db"
    }
}

