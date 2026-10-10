variable "apigatewayv2_routes" {
  description = <<EOT
Map of apigatewayv2_routes, attributes below
Required:
    - api_id
    - route_key
Optional:
    - api_key_required
    - authorization_scopes
    - authorization_type
    - authorizer_id
    - model_selection_expression
    - operation_name
    - region
    - request_models
    - route_response_selection_expression
    - target
    - request_parameter (block):
        - request_parameter_key (required)
        - required (required)
EOT

  type = map(object({
    api_id                              = string
    route_key                           = string
    api_key_required                    = optional(bool)
    authorization_scopes                = optional(set(string))
    authorization_type                  = optional(string)
    authorizer_id                       = optional(string)
    model_selection_expression          = optional(string)
    operation_name                      = optional(string)
    region                              = optional(string)
    request_models                      = optional(map(string))
    route_response_selection_expression = optional(string)
    target                              = optional(string)
    request_parameter = optional(list(object({
      request_parameter_key = string
      required              = bool
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.apigatewayv2_routes : (
        v.operation_name == null || (length(v.operation_name) >= 1 && length(v.operation_name) <= 64)
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

