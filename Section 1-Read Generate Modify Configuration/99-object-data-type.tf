variable "myobject" {
    type = object({
      Name = string,
      userID = number
    })  
}

output "out_object" {
    value = var.myobject  
}