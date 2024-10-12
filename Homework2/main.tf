resource "aws_key_pair" "aws-key" {
  key_name   = "bastion-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
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