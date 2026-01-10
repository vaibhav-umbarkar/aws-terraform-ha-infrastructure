resource "aws_launch_template" "this" {
  name_prefix   = "app-lt-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  network_interfaces {
    associate_public_ip_address = false
    security_groups             = [var.ec2_sg_id]
  }

  # SAME as: user_data = file("script1.sh")
  user_data = base64encode(file("${path.module}/script.sh"))

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "ASG-Instance"
    }
  }
}


resource "aws_autoscaling_group" "this" {
  min_size         = 1
  desired_capacity = 2
  max_size         = 3

  vpc_zone_identifier = var.private_subnet_ids

  target_group_arns = [var.target_group_arn]

  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "ASG-Instance"
    propagate_at_launch = true
  }
}
