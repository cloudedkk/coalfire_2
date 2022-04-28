

# /* Elastic IP for NAT */
# resource "aws_eip" "nat_eip_coalfire" {
#   vpc        = true
#   depends_on = [aws_internet_gateway.coalfire_ig]
# }

# resource "aws_subnet" "public_sub_one" {
#   vpc_id     = aws_vpc.coalfire_vpc.id
#   cidr_block = "10.1.0.0/24"
#   availability_zone = "us-west-1a"
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "coalfire"
#   }
# }

# resource "aws_subnet" "public_sub_two" {
#   vpc_id     = aws_vpc.coalfire_vpc.id
#   cidr_block = "10.1.1.0/24"
#   availability_zone = "us-west-1b"

#   tags = {
#     Name = "coalfire"
#   }
# }

# ## Private subnets



# resource "aws_subnet" "private_sub_one" {
#   vpc_id     = aws_vpc.coalfire_vpc.id
#   cidr_block = "10.1.2.0/24"
#   availability_zone = "us-west-1a"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "coalfire"
#   }
# }

# resource "aws_subnet" "private_sub_two" {
#   vpc_id     = aws_vpc.coalfire_vpc.id
#   cidr_block = "10.1.3.0/24"
#   availability_zone = "us-west-1b"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "coalfire"
#   }
# }

# resource "aws_subnet" "private_database_sub_one" {
#   vpc_id     = aws_vpc.coalfire_vpc.id
#   cidr_block = "10.1.4.0/24"
#   availability_zone = "us-west-1a"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "coalfire"
#   }
# }

# resource "aws_subnet" "private_database_sub_two" {
#   vpc_id     = aws_vpc.coalfire_vpc.id
#   cidr_block = "10.1.5.0/24"
#   availability_zone = "us-west-1b"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "coalfire"
#   }
# }
