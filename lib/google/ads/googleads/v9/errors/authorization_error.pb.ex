defmodule Google.Ads.Googleads.V9.Errors.AuthorizationErrorEnum.AuthorizationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :USER_PERMISSION_DENIED
          | :DEVELOPER_TOKEN_NOT_ON_ALLOWLIST
          | :DEVELOPER_TOKEN_PROHIBITED
          | :PROJECT_DISABLED
          | :AUTHORIZATION_ERROR
          | :ACTION_NOT_PERMITTED
          | :INCOMPLETE_SIGNUP
          | :CUSTOMER_NOT_ENABLED
          | :MISSING_TOS
          | :DEVELOPER_TOKEN_NOT_APPROVED
          | :INVALID_LOGIN_CUSTOMER_ID_SERVING_CUSTOMER_ID_COMBINATION
          | :SERVICE_ACCESS_DENIED
          | :ACCESS_DENIED_FOR_ACCOUNT_TYPE

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
end
defmodule Google.Ads.Googleads.V9.Errors.AuthorizationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
