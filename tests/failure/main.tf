resource "aws_api_gateway_rest_api" "example" {}

resource "aws_api_gateway_stage" "example" {
   rest_api_id = aws_api_gateway_rest_api.example.id
}

resource "aws_api_gateway_method_settings" "bad_example" {
  rest_api_id = aws_api_gateway_rest_api.example.id
  stage_name  = aws_api_gateway_stage.example.stage_name
  method_path = "path1/GET"

  settings {
    metrics_enabled = true
    logging_level   = "INFO"
    caching_enabled = true
    cache_data_encrypted = false
  }
}
