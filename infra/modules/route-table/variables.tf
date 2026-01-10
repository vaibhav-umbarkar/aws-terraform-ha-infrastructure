# VPC ID
variable "vpc_id"{
    description = "The ID of the VPC where the Route Table will be created"
    type = string
}

# Internet Gateway ID
variable "ig_id"{
    description = "The ID of the Internet Gateway to route traffic to"
    type = string
}

# NAT Gateway IDs
variable "nat_1_id"{
    description = "NAT ID for public subnet 1"
    type = string
}

variable "nat_2_id"{
    description = "NAT ID for public subnet 2"
    type = string
}

# Public Subnet 1 ID
variable "public_subnet_1_id"{
    description = "The ID of the first Public Subnet"
    type = string
}

# Public Subnet 2 ID
variable "public_subnet_2_id"{
    description = "The ID of the second Public Subnet"
    type = string
}

# Private Subnet 1 ID
variable "private_subnet_1_id"{
    description = "The ID of the first Private Subnet"
    type = string
}

# Private Subnet 2 ID
variable "private_subnet_2_id"{
    description = "The ID of the second Private Subnet"
    type = string
}