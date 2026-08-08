variable "dev_names" {
    type = list(string)
    default = [ "alice", "bob", "john" ]  
}

resource "aws_iam_user" "name" {
  name = var.dev_names[count.index]
  count = 3
}