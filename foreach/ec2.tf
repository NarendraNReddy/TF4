resource "aws_instance" "expense" {
    for_each = var.instance_names  #each.key each.item 
    
    ami = data.aws_ami.ami_info.id
    instance_type = each.value
    vpc_security_group_ids = ["sg-0631b424ec4551f94"]
    tags = {
        Name = each.key
        Module = each.key
    }
}