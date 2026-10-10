output "apigatewayv2_routes_id" {
  description = "Map of id values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigatewayv2_routes_api_id" {
  description = "Map of api_id values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "apigatewayv2_routes_api_key_required" {
  description = "Map of api_key_required values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.api_key_required if v.api_key_required != null }
}
output "apigatewayv2_routes_authorization_scopes" {
  description = "Map of authorization_scopes values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.authorization_scopes if v.authorization_scopes != null && length(v.authorization_scopes) > 0 }
}
output "apigatewayv2_routes_authorization_type" {
  description = "Map of authorization_type values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.authorization_type if v.authorization_type != null && length(v.authorization_type) > 0 }
}
output "apigatewayv2_routes_authorizer_id" {
  description = "Map of authorizer_id values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.authorizer_id if v.authorizer_id != null && length(v.authorizer_id) > 0 }
}
output "apigatewayv2_routes_model_selection_expression" {
  description = "Map of model_selection_expression values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.model_selection_expression if v.model_selection_expression != null && length(v.model_selection_expression) > 0 }
}
output "apigatewayv2_routes_operation_name" {
  description = "Map of operation_name values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.operation_name if v.operation_name != null && length(v.operation_name) > 0 }
}
output "apigatewayv2_routes_region" {
  description = "Map of region values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "apigatewayv2_routes_request_models" {
  description = "Map of request_models values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.request_models if v.request_models != null && length(v.request_models) > 0 }
}
output "apigatewayv2_routes_request_parameter" {
  description = "Map of request_parameter values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.request_parameter if v.request_parameter != null && length(v.request_parameter) > 0 }
}
output "apigatewayv2_routes_route_key" {
  description = "Map of route_key values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.route_key if v.route_key != null && length(v.route_key) > 0 }
}
output "apigatewayv2_routes_route_response_selection_expression" {
  description = "Map of route_response_selection_expression values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.route_response_selection_expression if v.route_response_selection_expression != null && length(v.route_response_selection_expression) > 0 }
}
output "apigatewayv2_routes_target" {
  description = "Map of target values across all apigatewayv2_routes, keyed the same as var.apigatewayv2_routes"
  value       = { for k, v in aws_apigatewayv2_route.apigatewayv2_routes : k => v.target if v.target != null && length(v.target) > 0 }
}

