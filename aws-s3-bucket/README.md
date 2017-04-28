# aws-s3-bucket

Fork from [freeletics-engineering/terraform_aws_s3_bucket-single-use](https://github.com/freeletics-engineering/terraform_aws_s3_bucket-single-use)

## Usage
```
module "s3-store" {
  source      = "github.com/CuriosityChina/tf-mods//aws-s3-bucket"
  username    = "ci-terraform"
  bucket-name = "curio-ci-terraform"
  acl = "private"
  versioning = "true"
}
```
