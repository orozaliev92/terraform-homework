resource "aws_iam_user" "bp" {
  name = "jenny"
}

resource "aws_iam_user" "bp2" {
  name = "rose"
}

resource "aws_iam_user" "bp3" {
  name = "lisa"
}

resource "aws_iam_user" "bp4" {
  name = "jisoo"
}

resource "aws_iam_user" "bp5" {
  name = "miyeon"
}

resource "aws_iam_user" "tw" {
  name = "jihyo"
}

resource "aws_iam_user" "tw2" {
  name = "sana"
}

resource "aws_iam_user" "tw3" {
  name = "momo"
}

resource "aws_iam_user" "tw4" {
  name = "dahuyn"
}

resource "aws_iam_user" "tw5" {
  name = "mina"
}

resource "aws_iam_group" "blackpink" {
  name = "blackpink"
}

resource "aws_iam_group" "twice" {
  name = "twice"
}

resource "aws_iam_group_membership" "blackpink" {
  name = "adding-users-to-blackpink-group"

  users = [
    aws_iam_user.bp.name,
    aws_iam_user.bp2.name,
    aws_iam_user.bp3.name,
    aws_iam_user.bp4.name,
    aws_iam_user.bp5.name

]

  group = aws_iam_group.blackpink.name
}

resource "aws_iam_group_membership" "twice" {
  name = "adding-users-to-twice-group"

  users = [
    aws_iam_user.tw.name,
    aws_iam_user.tw2.name,
    aws_iam_user.tw3.name,
    aws_iam_user.tw4.name,
    aws_iam_user.tw5.name,
    
    ]

  group = aws_iam_group.twice.name
}