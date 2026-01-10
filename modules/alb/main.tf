# Security group for ALB
resource "aws_security_group" "alb_sg"{
    name = "alb_sg"
    vpc_id = var.vpc_id
    description = "Security group for ALB"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

}

# Application Load Balancer
resource "aws_lb" "alb"{
    name = "alb"
    internal = false
    load_balancer_type = "application"

    security_groups = [aws_security_group.alb_sg.id]
    subnets = [var.public_sub1_id, var.public_sub2_id]

    tags = {
        Name = "Application Load Balancer"
    }
}

# Target Group for ALB
resource "aws_lb_target_group" "tg"{
    name = "myTG"
    port = 80
    protocol = "HTTP"
    vpc_id = var.vpc_id
    target_type = "instance"

    health_check {
        path = "/"
        port = "traffic-port"
    }
}

# Listener for ALB
resource "aws_lb_listener" "listener"{
    load_balancer_arn = aws_lb.alb.arn
    port = 80
    protocol = "HTTP"

    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.tg.arn
    }
}