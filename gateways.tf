# /* NAT */
# resource "aws_nat_gateway" "coalfire_nat_gw" {
#   allocation_id = aws_eip.nat_eip_coalfire.id
#   subnet_id     = aws_subnet.public_sub_one.id
#   depends_on    = [aws_internet_gateway.coalfire_ig]
#   tags = {
#     Name        = "coalfire"
#   }
# }

# /* Internet gateway for the public subnet */
# resource "aws_internet_gateway" "coalfire_ig" {
#   vpc_id        = aws_vpc.coalfire_vpc.id
#   tags = {
#     Name        = "coalfire"
#   }
# }
