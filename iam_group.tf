provider "aws" {
  
}
resource "aws_iam_user" "tf_users" {
    count = 5
    name = ["aws_iam_user1","aws_iam_user2","aws_iam_user3","aws_iam_user4","aws_iam_user5"]

}