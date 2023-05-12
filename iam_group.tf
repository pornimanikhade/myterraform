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
   [user = aws_iam_user.tf-user1.shaista
    user = aws_iam_user.tf-user2.shweta
    user = aws_iam_user.tf-user3.sagar
    user = aws_iam_user.tf-user4.swapnil
    user = aws_iam_user.tf-user5.sarang]
    groups =[aws_iam_group.tf-group.cloudblitz]        
}
