variable "instance_tags" {
    type = map
    default = {
        Name = "Alice"
        Team = "Payments"

    }  
}

output "instance_tags" {
    value = var.instance_tags
  
}