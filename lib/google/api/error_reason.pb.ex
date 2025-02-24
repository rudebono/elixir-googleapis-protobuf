defmodule Google.Api.ErrorReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ERROR_REASON_UNSPECIFIED, 0
  field :SERVICE_DISABLED, 1
  field :BILLING_DISABLED, 2
  field :API_KEY_INVALID, 3
  field :API_KEY_SERVICE_BLOCKED, 4
  field :API_KEY_HTTP_REFERRER_BLOCKED, 7
  field :API_KEY_IP_ADDRESS_BLOCKED, 8
  field :API_KEY_ANDROID_APP_BLOCKED, 9
  field :API_KEY_IOS_APP_BLOCKED, 13
  field :RATE_LIMIT_EXCEEDED, 5
  field :RESOURCE_QUOTA_EXCEEDED, 6
  field :LOCATION_TAX_POLICY_VIOLATED, 10
  field :USER_PROJECT_DENIED, 11
  field :CONSUMER_SUSPENDED, 12
  field :CONSUMER_INVALID, 14
  field :SECURITY_POLICY_VIOLATED, 15
  field :ACCESS_TOKEN_EXPIRED, 16
  field :ACCESS_TOKEN_SCOPE_INSUFFICIENT, 17
  field :ACCOUNT_STATE_INVALID, 18
  field :ACCESS_TOKEN_TYPE_UNSUPPORTED, 19
  field :CREDENTIALS_MISSING, 20
  field :RESOURCE_PROJECT_INVALID, 21
  field :SESSION_COOKIE_INVALID, 23
  field :USER_BLOCKED_BY_ADMIN, 24
  field :RESOURCE_USAGE_RESTRICTION_VIOLATED, 25
  field :SYSTEM_PARAMETER_UNSUPPORTED, 26
  field :ORG_RESTRICTION_VIOLATION, 27
  field :ORG_RESTRICTION_HEADER_INVALID, 28
  field :SERVICE_NOT_VISIBLE, 29
  field :GCP_SUSPENDED, 30
  field :LOCATION_POLICY_VIOLATED, 31
  field :MISSING_ORIGIN, 33
  field :OVERLOADED_CREDENTIALS, 34
end
