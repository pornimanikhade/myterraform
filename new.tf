provider "aws" {
  
}
resource "aws_iam_group_membership" "cloudblitz" {
  name = "aws-group1"

  users = [
    "aws_iam_user.pornima.tf-user1",
    "aws_iam_user.sadhika.tf-user2",
  ]

  group = "aws_iam_group.tf_group.aws-group"
}

resource "aws_iam_group" "tf_group" {
  name = "aws-group"
}

resource "aws_iam_user" "pornima" {
  name = "tf-user1"
}

resource "aws_iam_user" "sadhika" {
  name = "tf-user2"
}
