variable "ami_id" {
    description = "AMI ID for EC2"
    type = string
    default = "ami-02b8269d5e85954ef"
}

variable "instance_type" {
    description = "Instance Type for EC2"
    type = string
    default = "t2.micro"
}

variable "key_name" {
    description = "Key Pair Name"
    type = string
    default = "my-key"
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "ec2_sg_id" {
  type = string
}

variable "target_group_arn" {
  type = string
}
