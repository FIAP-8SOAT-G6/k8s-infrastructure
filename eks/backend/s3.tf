resource "aws_s3_bucket" "backend" {
  bucket = "tcl-terraform-bucket-vitorrafael"
}

resource "aws_s3_bucket_ownership_controls" "backend" {
  bucket = aws_s3_bucket.backend.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "backend" {
  bucket = aws_s3_bucket.backend.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.backend,
    aws_s3_bucket_public_access_block.backend,
  ]

  bucket = aws_s3_bucket.backend.id
  acl    = "public-read"
}
