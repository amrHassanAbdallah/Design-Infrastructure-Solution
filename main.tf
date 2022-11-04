# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "---------"
  secret_key = "----------"
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami = "ami-0742b4e673072066f"
  instance_type = "t2.micro"
  count = "4"
  tags = {
    "name" = "Udacity terraform"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  ami = "ami-0742b4e673072066f"
  instance_type = "m4.large"
  count = "2"
  tags = {
    "name" = "Udacity terraform"
  }
}

resource "aws_lambda_function" "test_lambda" {
  filename      = "greet_labda.py"
  function_name = "greeting_func"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "index.test"
  source_code_hash = filebase64sha256("lambda_function_payload.zip")

  runtime = "python2.x"

  environment {
    variables = {
      greeting = "Amr"
    }
  }
}