defmodule Google.Actions.Sdk.V2.AccountLinking.LinkingType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LINKING_TYPE_UNSPECIFIED
          | :GOOGLE_SIGN_IN
          | :OAUTH_AND_GOOGLE_SIGN_IN
          | :OAUTH

  field :LINKING_TYPE_UNSPECIFIED, 0

  field :GOOGLE_SIGN_IN, 1

  field :OAUTH_AND_GOOGLE_SIGN_IN, 2

  field :OAUTH, 3
end

defmodule Google.Actions.Sdk.V2.AccountLinking.AuthGrantType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :AUTH_GRANT_TYPE_UNSPECIFIED | :AUTH_CODE | :IMPLICIT

  field :AUTH_GRANT_TYPE_UNSPECIFIED, 0

  field :AUTH_CODE, 1

  field :IMPLICIT, 2
end

defmodule Google.Actions.Sdk.V2.AccountLinking do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_account_creation: boolean,
          linking_type: Google.Actions.Sdk.V2.AccountLinking.LinkingType.t(),
          auth_grant_type: Google.Actions.Sdk.V2.AccountLinking.AuthGrantType.t(),
          app_client_id: String.t(),
          authorization_url: String.t(),
          token_url: String.t(),
          scopes: [String.t()],
          learn_more_url: String.t(),
          use_basic_auth_header: boolean
        }

  defstruct [
    :enable_account_creation,
    :linking_type,
    :auth_grant_type,
    :app_client_id,
    :authorization_url,
    :token_url,
    :scopes,
    :learn_more_url,
    :use_basic_auth_header
  ]

  field :enable_account_creation, 1, type: :bool
  field :linking_type, 2, type: Google.Actions.Sdk.V2.AccountLinking.LinkingType, enum: true
  field :auth_grant_type, 3, type: Google.Actions.Sdk.V2.AccountLinking.AuthGrantType, enum: true
  field :app_client_id, 4, type: :string
  field :authorization_url, 5, type: :string
  field :token_url, 6, type: :string
  field :scopes, 7, repeated: true, type: :string
  field :learn_more_url, 8, type: :string
  field :use_basic_auth_header, 9, type: :bool
end
