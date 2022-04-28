# /* Routing table for public subnet */
# resource "aws_route_table" "public_coalfire_routing" {
#   vpc_id = "${aws_vpc.coalfire_vpc.id}"
#   tags = {
#     Name  = "coalfire"
#   }
# }

# /* Routing table for private subnet */
# resource "aws_route_table" "private_coalfire_routing" {
#   vpc_id = "${aws_vpc.coalfire_vpc.id}"
#   tags = {
#     Name        = "coalfire"
#   }
# }

# resource "aws_route" "public_internet_gateway" {
#   route_table_id         = aws_route_table.public_coalfire_routing.id
#   destination_cidr_block = "0.0.0.0/0"
#   gateway_id             = aws_internet_gateway.coalfire_ig.id
# }
# resource "aws_route" "private_nat_gateway" {
#   route_table_id         = aws_route_table.private_coalfire_routing.id
#   destination_cidr_block = "0.0.0.0/0"
#   nat_gateway_id         = aws_nat_gateway.coalfire_nat_gw.id
# }



# # /* Route table associations */
# resource "aws_route_table_association" "public_coalfire_route_table" {
#    subnet_id      =  "[\"${join("\", \"", var.subnet_public)}\"]"
#    route_table_id = aws_route_table.public_coalfire_routing.id
# }
# resource "aws_route_table_association" "private_coalfire_route_table" {
#   subnet_id      =  "[\"${join("\", \"", var.subnet_private)}\"]"  
#   #subnet_id      = [aws_subnet.private_sub_one, aws_subnet.private_sub_two, aws_subnet.private_database_sub_one, aws_subnet.private_database_sub_two]
#   route_table_id = aws_route_table.private_coalfire_routing.id
# }