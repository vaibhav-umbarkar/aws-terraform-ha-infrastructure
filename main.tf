# Import VPC module
module "vpc" {
  source = "./modules/vpc"
}

# Import Subnet module
module "subnet"{
    source = "./modules/subnet"
    vpc_id = module.vpc.vpc_id
}

# Import Internet Gateway module
module "ig"{
  source = "./modules/ig"
  vpc_id = module.vpc.vpc_id
}

# Import NAT modules
module "nat_1"{
  source = "./modules/nat"
  public_subnet_id = module.subnet.public_sub1_id
}

module "nat_2"{
  source = "./modules/nat"
  public_subnet_id = module.subnet.public_sub2_id
}

# import route table module
module "route_table"{
  source = "./modules/route-table"
  vpc_id = module.vpc.vpc_id
  ig_id = module.ig.ig_id
  nat_1_id = module.nat_1.nat_gateway_id
  nat_2_id = module.nat_2.nat_gateway_id
  public_subnet_1_id = module.subnet.public_sub1_id
  public_subnet_2_id = module.subnet.public_sub2_id
  private_subnet_1_id = module.subnet.private_sub1_id
  private_subnet_2_id = module.subnet.private_sub2_id
}

# Import ALB module
module "alb"{
  source = "./modules/alb"
  vpc_id = module.vpc.vpc_id
  public_sub1_id = module.subnet.public_sub1_id
  public_sub2_id = module.subnet.public_sub2_id
}

# Import EC2 Security Group module
module "security_group"{
    source = "./modules/security-group"
    vpc_id = module.vpc.vpc_id
    alb_sg_id = module.alb.alb_sg_id
}

# Import ASG module
module "asg" {
  source = "./modules/asg"

  private_subnet_ids = [
    module.subnet.private_sub1_id,
    module.subnet.private_sub2_id
  ]

  ec2_sg_id         = module.security_group.ec2_sg_id
  target_group_arn = module.alb.target_group_arn
}

# Output ALB DNS Name
output "alb_dns_name" {
  value = module.alb.loadbalancerdns
}
