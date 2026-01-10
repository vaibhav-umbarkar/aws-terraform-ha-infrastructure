# VPC ID
variable "vpc_id"{
    description = "VPC ID for Security Group"
    type = string
}

# ALB SG ID
variable "alb_sg_id" {
    description = "ALB Security Group ID for ec2 Access"
    type        = string
}