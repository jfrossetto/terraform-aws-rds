resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  identifier           = var.instance_name
  instance_class       = var.instance_class
  db_name              = var.db_name
  username             = var.db_user
  password             = var.db_pass
  parameter_group_name = "default.mysql5.7"
  vpc_security_group_ids = [var.security_rds]
  skip_final_snapshot  = true
  multi_az = var.multi_az
  apply_immediately = true
  db_subnet_group_name = var.db_subnet_name
}