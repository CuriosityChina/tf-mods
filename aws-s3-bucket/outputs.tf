output "bucket" {
  value = "${aws_s3_bucket.bucket.id}"
}

output "aws_key" {
  value = "${aws_iam_access_key.access_key.id}"
}

output "aws_secret" {
  value = "${aws_iam_access_key.access_key.secret}"
}
