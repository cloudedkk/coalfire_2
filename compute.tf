# resource "aws_instance" "bastion1" {
#   ami               = "ami-08ed5c5dd62794ec0" 
#   instance_type     = "t3a.medium"
#   subnet_id         = "aws_subnet.public_sub_one.id"
#   availability_zone = "us-west-1a"
#   monitoring        = true

#  root_block_device {
#     volume_size = 50
#   }
# }

# resource "aws_instance" "wpserver1" {
#   ami               = "ami-0b0af3577fe5e3532" 
#   instance_type     = "t3a.micro"
#   subnet_id         = "aws_subnet.private_sub_one.id"
#   availability_zone = "us-west-1a"
#   monitoring        = true

#  root_block_device {
#     volume_size = 20
#   }
# }

# resource "aws_instance" "wpserver2" {
#   ami               = "ami-0b0af3577fe5e3532" 
#   instance_type     = "t3a.medium"
#   subnet_id         = "aws_subnet.private_sub_two.id"
#   availability_zone = "us-west-1b"
#   monitoring        = true

#  root_block_device {
#     volume_size = 20
#   }
# }


