resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = var.instance_class
  name                 = var.db_name
  username             = var.db_user
  password             = var.db_pass
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  multi_az = var.multi_az
  apply_immediately = true
}
