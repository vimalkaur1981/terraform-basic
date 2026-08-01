/*resource "local_file" "myfile" {
    content = "Hello"
    filename = "${path.module}/myfile.txt"
}*/

removed {
  from = local_file.myfile
  lifecycle {
    destroy = false
  }
}
