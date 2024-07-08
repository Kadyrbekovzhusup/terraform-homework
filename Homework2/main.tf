resource "aws_s3_bucket" "bt1" {
  bucket = "kaizen-zhusup"
    force_destroy = true
}

resource "aws_s3_bucket" "bt2" {
  bucket_prefix  = "kaizen-"
  force_destroy = true
}
#import buckets from aws with terraform 

# terraform import aws_s3_bucket.bt3 hm-111
# terraform import aws_s3_bucket.bt4 hm-222


resource "aws_s3_bucket" "bt3" {
  bucket = "hm-111"
    force_destroy = true
}
resource "aws_s3_bucket" "bt4" {
  bucket = "hm-222"
    force_destroy = true
}

