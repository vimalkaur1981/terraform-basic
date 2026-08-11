variable "db_password" {
    type = string
    description = "password for the database"

    validation {
      condition = length(var.db_password) >= 12
      error_message = "Database password must be at least 12 characters long"
    }  
}