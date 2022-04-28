# /*==== VPC's Default Security Group ======*/
# resource "aws_security_group" "default_coalfire_sg" {
#   name        = "coalfire-default-sg"
#   description = "Default security group to allow inbound/outbound from the VPC"
#   vpc_id        = "${aws_vpc.coalfire_vpc.id}"
#   depends_on  = [aws_vpc.coalfire_vpc]
#   ingress {
#     from_port = "80"
#     to_port   = "443"
#     protocol  = "tcp"
#   }
# }