output "python_hello_world_arn" {
  description = "The Amazon Resource Name (ARN) identifying the Lambda"
  value       = module.lambda.this_lambda_function_arn
}

output "python_hello_world_name" {
  description = "The Lambda function name"
  value       = module.lambda.this_lambda_function_name
}