resource "aws_s3_bucket" "example" {
  bucket = "terraform-dhaval-d-me-1907"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_object" "website" {
  bucket       = aws_s3_bucket.example.id
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
}

resource "aws_s3_bucket_policy" "public_read" {

  depends_on = [
    aws_s3_bucket_public_access_block.example
  ]

  bucket = aws_s3_bucket.example.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = "*"
      Action = "s3:GetObject"
      Resource = "${aws_s3_bucket.example.arn}/*"
    }]
  })
}