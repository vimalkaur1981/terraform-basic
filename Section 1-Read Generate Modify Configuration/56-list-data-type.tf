variable "mylist" {  
    type = list(number)
}

output "mylist" {
    value = var.mylist  
}