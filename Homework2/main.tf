resource "aws_key_pair" "aws-key" {
  key_name   = "bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}



resource "aws_s3_bucket" "bucket1" {
  bucket = "kaizen-zhusup"
  force_destroy = true
}


resource "aws_s3_bucket" "bucket2" {
  bucket_prefix = "kaizen-"
  force_destroy = true
}

resource "aws_s3_bucket" "bucket3" {
  bucket = "bucket-homework1"
  force_destroy = true
}

resource "aws_s3_bucket" "bucket4" {
  bucket = "bucket-homework2"
  force_destroy = true
}

import {
  to = aws_s3_bucket.bucket3
  id = "bucket-homework1"
}

import {
  to = aws_s3_bucket.bucket4
  id = "bucket-homework2"
}