terraform {
  backend "s3" {
    bucket = "bucket-zhusup"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"
  }
}
