check "website_checker" {
  data "http" "example" {
    url = "http://google123.com"
    
  }
  assert {
    condition = data.http.example.status_code == 200
    error_message = "Website is not runnning. Please check"
  }
  
}

resource "local_file" "foo" {
  filename = "${path.module}/foo.txt"
  content = "Hi"
  
}

