defmodule Google.Ads.Googleads.V18.Errors.AuthorizationErrorEnum.AuthorizationError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :USER_PERMISSION_DENIED, 2
  field :DEVELOPER_TOKEN_NOT_ON_ALLOWLIST, 13
  field :DEVELOPER_TOKEN_PROHIBITED, 4
  field :PROJECT_DISABLED, 5
  field :AUTHORIZATION_ERROR, 6
  field :ACTION_NOT_PERMITTED, 7
  field :INCOMPLETE_SIGNUP, 8
  field :CUSTOMER_NOT_ENABLED, 24
  field :MISSING_TOS, 9
  field :DEVELOPER_TOKEN_NOT_APPROVED, 10
  field :INVALID_LOGIN_CUSTOMER_ID_SERVING_CUSTOMER_ID_COMBINATION, 11
  field :SERVICE_ACCESS_DENIED, 12
  field :ACCESS_DENIED_FOR_ACCOUNT_TYPE, 25
  field :METRIC_ACCESS_DENIED, 26
  field :CLOUD_PROJECT_NOT_UNDER_ORGANIZATION, 27
  field :ACTION_NOT_PERMITTED_FOR_SUSPENDED_ACCOUNT, 28
end

defmodule Google.Ads.Googleads.V18.Errors.AuthorizationErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
