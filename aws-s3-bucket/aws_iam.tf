resource "aws_iam_user" "user" {
  name = "${var.username}"
}

resource "aws_iam_access_key" "access_key" {
  user = "${aws_iam_user.user.name}"
}

data "aws_iam_policy_document" "policy_document" {
  statement {
    actions = [
      "s3:GetBucketLocation",
      "s3:ListAllMyBuckets",
    ]

    resources = [
      "arn:aws:s3:::*",
    ]
  }

  statement {
    actions = [
      "s3:ListBucket",
    ]

    resources = [
      "arn:aws:s3:::${var.bucket-name}",
    ]
  }

  statement {
    actions = [
      "s3:PutObject",
      "s3:GetObject",
      "s3:DeleteObject",
    ]

    resources = [
      "arn:aws:s3:::${var.bucket-name}/*",
    ]
  }
}

resource "aws_iam_user_policy" "user_policy" {
  name   = "${var.username}-policy"
  user   = "${aws_iam_user.user.id}"
  policy = "${data.aws_iam_policy_document.policy_document.json}"
}
