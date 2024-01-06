resource "aws_db_subnet_group" "demoapp_db_subnet_group" {
  name       = "demobank"
  subnet_ids = [module.vpc.public_subnets[0], module.vpc.public_subnets[1], module.vpc.public_subnets[2]]
  tags = {
    Name = "RDS Subnet Group"
  }

}

resource "aws_db_instance" "demobank_rds" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t2.micro"
  identifier             = "javademoapp"
  db_name                = "demobank_db"
  username               = "admin"
  password               = "adminuser"
  parameter_group_name   = "default.mysql8.0"
  multi_az               = false
  publicly_accessible    = false
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.demoapp_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.bank_app_rds_sg.id]
}