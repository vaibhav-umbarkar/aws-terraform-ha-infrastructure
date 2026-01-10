# Public Route Table
resource "aws_route_table" "public_rt"{
    vpc_id = var.vpc_id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = var.ig_id
    }
    tags = {
        Name = "Public Route Table"
    }
}

# Public Route Table Association 1
resource "aws_route_table_association" "public_assoc1"{
    subnet_id = var.public_subnet_1_id
    route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_assoc2"{
    subnet_id = var.public_subnet_2_id
    route_table_id = aws_route_table.public_rt.id
}



# Private Route Table
resource "aws_route_table" "private_rt_az1"{
    vpc_id = var.vpc_id
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = var.nat_1_id
    }
    tags = {
        Name = "Private Route Table"
    }
}

resource "aws_route_table" "private_rt_az2"{
    vpc_id = var.vpc_id
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = var.nat_2_id
    }
    tags = {
        Name = "Private Route Table"
    }
}

# Private Route Table Association 1
resource "aws_route_table_association" "private_assoc1"{
    subnet_id = var.private_subnet_1_id
    route_table_id = aws_route_table.private_rt_az1.id
}

resource "aws_route_table_association" "private_assoc2"{
    subnet_id = var.private_subnet_2_id
    route_table_id = aws_route_table.private_rt_az2.id
}