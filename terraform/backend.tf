terraform {
  backend "s3" {
    bucket  = "pavan-vvspk-s3-bucket"
    key     = "pavan_path"
    region  = "us-east-2"
    profile = "vvspk"
  }
}