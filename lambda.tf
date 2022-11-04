data "archive_file" "python_lambda_package" {
  type = "zip"
  source_file = "greet_lambda.py"
  output_path = "greet_lambda_func.zip"
}

resource "aws_lambda_function" "test_lambda_function" {
  function_name = "greetingFunction"
  filename      = "greet_lambda_func.zip"
  source_code_hash = data.archive_file.python_lambda_package.output_base64sha256
  role          = aws_iam_role.function_role.arn
  runtime       = "python3.9"
  handler       = "greet_lambda.lambda_handler"
  timeout       = 10
  environment {
    variables = {
      greeting = var.greeting
    }
  }
}