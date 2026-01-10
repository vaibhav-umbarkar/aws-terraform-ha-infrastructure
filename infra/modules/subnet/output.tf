# Output Public Subnet IDs
output "public_sub1_id"{
    value = aws_subnet.public_subnet_1.id
}
output "public_sub2_id"{
    value = aws_subnet.public_subnet_2.id
}
# Output Private Subnet IDs
output "private_sub1_id"{
    value = aws_subnet.private_subnet_1.id
}
output "private_sub2_id"{
    value = aws_subnet.private_subnet_2.id
}