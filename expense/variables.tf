#1. command line
#2. tfvars
#3. ENV variable
#4. variable default value

#ec2 Variables
variable "image_id" {
  type        = string #optional
  default     = "ami-090252cbe067a9e58" #optional
  description = "RHEL-9 AMI ID" #optional
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        terraform=true
        # Module = "DB"
        # Name = "DB"
    }
}

# sg variables
variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "instance_names" {
    type=list 
    default = ["db","backend","frontend"]
  
}

#R53 variables
variable "zone_id" {
    type=string
    default = "Z07723142N736V4HE6Z3C"
  
}

variable "domain_name" {
    default = "daws78s-nnr.online"
  
}