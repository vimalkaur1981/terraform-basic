resource "aws_iam_user" "users" {
  name = "iam-user-${count.index}"
  count = 3
}

output "iam_users" {
    value = zipmap(aws_iam_user.users[*].name, aws_iam_user.users[*].arn)
}