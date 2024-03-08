data "aws_db_instance" "database" {
  db_instance_identifier = local.db_name
}

data "aws_subnets" "db_subnet" {
  
  filter {
    name   = "tag:Name"
    values = var.db_subnets
  }
}
