resource "aws_iam_user" "us" {
  for_each = toset(["jenny","rose","lisa","jisoo"])
  name = each.key
}
#create group

resource "aws_iam_group" "gr" {
  name = "blackpink"
}

#add users to group

resource "aws_iam_group_membership" "team" {
  name = "team2"

  users = [
    for i in aws_iam_user.us : i.name

  ]

  group = aws_iam_group.gr.name
  }
