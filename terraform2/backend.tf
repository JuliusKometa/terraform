terraform {
  backend "s3" {
    bucket = "code-sharing-bucket"
    key = "ec2.tfstate"
    region = "us-west-2"
    dynamodb_table = "jjtfstate"
  }
}