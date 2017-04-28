resource "aws_s3_bucket" "bucket" {
  bucket        = "${var.bucket-name}"
  force_destroy = false
  acl           = "${var.acl}"

  versioning {
    enabled = "${var.versioning}"
  }
}
