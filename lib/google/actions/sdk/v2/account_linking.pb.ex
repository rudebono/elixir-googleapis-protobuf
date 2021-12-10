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

  defstruct enable_account_creation: false,
            linking_type: :LINKING_TYPE_UNSPECIFIED,
            auth_grant_type: :AUTH_GRANT_TYPE_UNSPECIFIED,
            app_client_id: "",
            authorization_url: "",
            token_url: "",
            scopes: [],
            learn_more_url: "",
            use_basic_auth_header: false

  field :enable_account_creation, 1,
    type: :bool,
    json_name: "enableAccountCreation",
    deprecated: false

  field :linking_type, 2,
    type: Google.Actions.Sdk.V2.AccountLinking.LinkingType,
    json_name: "linkingType",
    enum: true,
    deprecated: false

  field :auth_grant_type, 3,
    type: Google.Actions.Sdk.V2.AccountLinking.AuthGrantType,
    json_name: "authGrantType",
    enum: true,
    deprecated: false

  field :app_client_id, 4, type: :string, json_name: "appClientId", deprecated: false
  field :authorization_url, 5, type: :string, json_name: "authorizationUrl", deprecated: false
  field :token_url, 6, type: :string, json_name: "tokenUrl", deprecated: false
  field :scopes, 7, repeated: true, type: :string, deprecated: false
  field :learn_more_url, 8, type: :string, json_name: "learnMoreUrl", deprecated: false
  field :use_basic_auth_header, 9, type: :bool, json_name: "useBasicAuthHeader", deprecated: false
end
