resource "aws_s3_bucket" "terraform-state" {
    bucket = "terraform-state-f28c6"
    acl = "private"
    force_destroy = true

    tags {
        Name = "Terraform state"
    }
}
