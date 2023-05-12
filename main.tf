provider "aws" {
  
}
resource "aws_iam_user" "tera_user" {
    name = "aws_user"

    tags = {
      tag-key = "dev"
      
    }
  
}