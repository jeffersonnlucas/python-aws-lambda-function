provider "aws" {
  region  = "us-east-1"
  profile = "dev"
}

data "aws_region" "current" {
}

data "aws_caller_identity" "current" {
}

module "lambda" {
  source                 = "terraform-aws-modules/lambda/aws"
  function_name          = "python-hello-world"
  description            = "Lambda hello world python"
  handler                = "index.lambda_handler"
  runtime                = "python3.8"
  
  source_path  = "../src/lambda/python-hello-world"

  tags = {
    Name = "python-hello-world"
  }
}