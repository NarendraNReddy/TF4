# output "ami_id"{
#     value=data.aws_ami.ami_id.id
# }


output "vpc_data" {
  value=data.aws_vpc.VPC.default
}
