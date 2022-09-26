terraform {
  backend "s3" {
    bucket = "forterraform11"
    key    = "path/to/my/key"
    region = "us-east-1"
    dynamotable_table = "terraform_s3dbtable"
  }
}
