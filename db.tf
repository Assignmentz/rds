# db subnet group

resource "aws_db_subnet_group" "db_subnet_group" {
  name                = local.db_subnet_groupname
  subnet_ids          = data.aws_subnets.db_subnet.ids

  depends_on = [ aws_subnet.subnets ]

}

resource "aws_db_instance" "database" {

  allocated_storage   = local.db_allocated_storage
  db_name             = local.db_name
  engine              = local.db_engine
  engine_version      = local.db_engine_version
  instance_class      = local.db_instance_class
  username            = local.db_username
  password            = local.db_password
  identifier          = local.db_identifier
  skip_final_snapshot = true

  depends_on = [ aws_db_subnet_group.db_subnet_group ]

}