# Output ALB SG ID
output "alb_sg_id"{
    value = aws_security_group.alb_sg.id
}

# Target Group ARN
output "target_group_arn"{
    value = aws_lb_target_group.tg.arn
}

# ALB DNS Name
output "loadbalancerdns"{
    value = aws_lb.alb.dns_name
}