resource "aws_iam_user" "users" {
for_each = toset (["jenny", "rose", "lisa", "jisoo"])
name = each.value
}

resource "aws_iam_group" "group" {
  name = "blackpink"
}

resource "aws_iam_group_membership" "team" {
    name = "testing-group-membership"
    users = [
        for i in aws_iam_user.users : i. name
]
    group = aws_iam_group.group. name
}