# resource "aws_lb" "coalfire_alb" {
#   name               = "coalfire-alb"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.default_coalfire_sg.id]
#   subnets            = aws_subnet.private_sub_one.id
#   enable_deletion_protection = true
# }

# resource "aws_lb_target_group" "coalfire_tg" {
#   name        = "coalfire-lb-tg"
#   target_type = "alb"
#   port        = 443
#   protocol    = "TCP"
#   vpc_id      = aws_vpc.coalfire_vpc.id
# }

# resource "aws_lb_listener" "front_end" {
#   load_balancer_arn = aws_lb.coalfire_alb.arn
#   port              = "443"
#   protocol          = "TCP"
  
#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.coalfire_tg.arn
#   }
# }