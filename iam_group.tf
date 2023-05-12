provider "aws" {
  
}
resource "aws_iam_user" "tf-user1" {
    name = "shaista"

}
resource "aws_iam_user" "tf-user2" {
    name = "shweta"

}
resource "aws_iam_user" "tf-user3" {
    name = "sagar"

}
resource "aws_iam_user" "tf-user4" {
    name = "swapnil"
}
resource "aws_iam_user" "tf-user5" {
    name = "sarang"
}
resource "aws_iam_group" "tf-group" {
    name = "cloudblitz"
}
resource "aws_iam_group_membership" "cbz_members" {
   name = "aws_members"
   users = ["aws_iam_user.tf-user1.shaista","aws_iam_user.tf-user2.shweta","aws_iam_user.tf-user3.sagar","aws_iam_user.tf-user4.swapnil",
"aws_iam_user.tf-user5.sarang"]
    group = "aws_iam_group.tf-group.cloudblitz"        
}
