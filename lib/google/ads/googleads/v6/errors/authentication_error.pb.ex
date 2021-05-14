defmodule Google.Ads.Googleads.V6.Errors.AuthenticationErrorEnum.AuthenticationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :AUTHENTICATION_ERROR
          | :CLIENT_CUSTOMER_ID_INVALID
          | :CUSTOMER_NOT_FOUND
          | :GOOGLE_ACCOUNT_DELETED
          | :GOOGLE_ACCOUNT_COOKIE_INVALID
          | :GOOGLE_ACCOUNT_AUTHENTICATION_FAILED
          | :GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH
          | :LOGIN_COOKIE_REQUIRED
          | :NOT_ADS_USER
          | :OAUTH_TOKEN_INVALID
          | :OAUTH_TOKEN_EXPIRED
          | :OAUTH_TOKEN_DISABLED
          | :OAUTH_TOKEN_REVOKED
          | :OAUTH_TOKEN_HEADER_INVALID
          | :LOGIN_COOKIE_INVALID
          | :USER_ID_INVALID
          | :TWO_STEP_VERIFICATION_NOT_ENROLLED
          | :ADVANCED_PROTECTION_NOT_ENROLLED

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
end

defmodule Google.Ads.Googleads.V6.Errors.AuthenticationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
