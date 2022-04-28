# resource "aws_db_instance" "coalfire_rds_1" {
#   allocated_storage    = 10
#   engine               = "PostgreSQL"
#   engine_version       = "11"
#   instance_class       = "db.t3.micro"
#   name                 = "RDS1"
#   username             = "coalfire  "
#   password             = "coalfire-123"
#   db_subnet_group_name = aws_subnet.private_database_sub_two.id
# }