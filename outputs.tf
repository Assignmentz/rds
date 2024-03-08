output "db_engine_version" {
    value = data.aws_db_instance.database.engine_version
}

output "db-name" {
    value = data.aws_db_instance.database.db_name
}

output "db_instance_arn" {
    value = data.aws_db_instance.database.db_instance_arn
}

output "db_availability_zone" {
    value = data.aws_db_instance.database.availability_zone  
}

output "uname" {
    value = data.aws_db_instance.database.master_username
}
