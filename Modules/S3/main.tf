# # modules/s3/main.tf
# resource "aws_s3_bucket" "my_bucket" {
#   bucket = var.bucket_name

#   tags = {
#     Name = var.bucket_name
#   }

#   # Keep the bucket from being destroyed by mistake
#   lifecycle {
#     prevent_destroy = true
#   }
# }

# resource "aws_s3_bucket_versioning" "my_bucket_versioning" {
#   bucket = aws_s3_bucket.my_bucket.id

#   versioning_configuration {
#     status = "Enabled"
#   }
# }
