resource "aws_s3_bucket" "tfstate" {
  bucket = "iacbook-tfstate123"

  versioning {
    enabled = true
  }

  tags {
    Name = "IAC Book TFState Bucket"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "iacbook-bucket123"

  tags {
    Name = "IAC Book Bucket"
  }
}

terraform {
  backend "s3" {
    # Be sure to change this bucket name and region to match an S3 Bucket you have already created!
    bucket = "iacbook-tfstate123"
    region = "eu-west-1"
    key    = "terraform.tfstate"
  }
}
