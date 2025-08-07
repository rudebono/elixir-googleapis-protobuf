defmodule Google.Ads.Googleads.V21.Errors.AuthenticationErrorEnum.AuthenticationError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AUTHENTICATION_ERROR, 2
  field :CLIENT_CUSTOMER_ID_INVALID, 5
  field :CUSTOMER_NOT_FOUND, 8
  field :GOOGLE_ACCOUNT_DELETED, 9
  field :GOOGLE_ACCOUNT_COOKIE_INVALID, 10
  field :GOOGLE_ACCOUNT_AUTHENTICATION_FAILED, 25
  field :GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH, 12
  field :LOGIN_COOKIE_REQUIRED, 13
  field :NOT_ADS_USER, 14
  field :OAUTH_TOKEN_INVALID, 15
  field :OAUTH_TOKEN_EXPIRED, 16
  field :OAUTH_TOKEN_DISABLED, 17
  field :OAUTH_TOKEN_REVOKED, 18
  field :OAUTH_TOKEN_HEADER_INVALID, 19
  field :LOGIN_COOKIE_INVALID, 20
  field :USER_ID_INVALID, 22
  field :TWO_STEP_VERIFICATION_NOT_ENROLLED, 23
  field :ADVANCED_PROTECTION_NOT_ENROLLED, 24
  field :ORGANIZATION_NOT_RECOGNIZED, 26
  field :ORGANIZATION_NOT_APPROVED, 27
  field :ORGANIZATION_NOT_ASSOCIATED_WITH_DEVELOPER_TOKEN, 28
  field :DEVELOPER_TOKEN_INVALID, 29
end

defmodule Google.Ads.Googleads.V21.Errors.AuthenticationErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
