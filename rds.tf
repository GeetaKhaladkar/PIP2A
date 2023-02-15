resource "aws_db_instance" "myrds" {


  engine              = "mysql"
  engine_version      = "8.0.27"
  allocated_storage   = 20
  storage_type        = "gp2"
  identifier          = "mydb"
  instance_class      = "db.t3.micro"
  username            = "admin"
  password            = "Password!123"
  publicly_accessible = true
  skip_final_snapshot = true
  backup_window       = "03:00-06:00"
  maintenance_window  = "Mon:00:00-Mon:03:00"

  tags = {
    Name = "MyRDS"
  }
}