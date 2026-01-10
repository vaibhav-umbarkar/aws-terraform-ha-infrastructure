# 2 Public Subnets
resource "aws_subnet" "public_subnet_1"{
    vpc_id = var.vpc_id
    cidr_block = var.public_subnet_cidr_1
    availability_zone = var.az1

    tags = {
        Name = "Public Subnet 1"
    }
}

resource "aws_subnet" "public_subnet_2"{
    vpc_id = var.vpc_id
    cidr_block = var.public_subnet_cidr_2
    availability_zone = var.az2

    tags = {
        Name = "Public Subnet 2"
    }

}

# 2 Private Subnets
resource "aws_subnet" "private_subnet_1"{
    vpc_id = var.vpc_id
    cidr_block = var.private_subnet_cidr_1
    availability_zone = var.az1

    tags = {
        Name = "Private Subnet 1"
    }
}

resource "aws_subnet" "private_subnet_2"{
    vpc_id = var.vpc_id
    cidr_block = var.private_subnet_cidr_2
    availability_zone = var.az2

    tags = {
        Name = "Private Subnet 2"
    }
}