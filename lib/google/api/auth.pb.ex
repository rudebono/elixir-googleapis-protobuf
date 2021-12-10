defmodule Google.Api.Authentication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rules: [Google.Api.AuthenticationRule.t()],
          providers: [Google.Api.AuthProvider.t()]
        }

  defstruct rules: [],
            providers: []

  field :rules, 3, repeated: true, type: Google.Api.AuthenticationRule
  field :providers, 4, repeated: true, type: Google.Api.AuthProvider
end
defmodule Google.Api.AuthenticationRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector: String.t(),
          oauth: Google.Api.OAuthRequirements.t() | nil,
          allow_without_credential: boolean,
          requirements: [Google.Api.AuthRequirement.t()]
        }

  defstruct selector: "",
            oauth: nil,
            allow_without_credential: false,
            requirements: []

  field :selector, 1, type: :string
  field :oauth, 2, type: Google.Api.OAuthRequirements
  field :allow_without_credential, 5, type: :bool, json_name: "allowWithoutCredential"
  field :requirements, 7, repeated: true, type: Google.Api.AuthRequirement
end
defmodule Google.Api.JwtLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          in: {:header, String.t()} | {:query, String.t()},
          value_prefix: String.t()
        }

  defstruct in: nil,
            value_prefix: ""

  oneof :in, 0

  field :header, 1, type: :string, oneof: 0
  field :query, 2, type: :string, oneof: 0
  field :value_prefix, 3, type: :string, json_name: "valuePrefix"
end
defmodule Google.Api.AuthProvider do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          issuer: String.t(),
          jwks_uri: String.t(),
          audiences: String.t(),
          authorization_url: String.t(),
          jwt_locations: [Google.Api.JwtLocation.t()]
        }

  defstruct id: "",
            issuer: "",
            jwks_uri: "",
            audiences: "",
            authorization_url: "",
            jwt_locations: []

  field :id, 1, type: :string
  field :issuer, 2, type: :string
  field :jwks_uri, 3, type: :string, json_name: "jwksUri"
  field :audiences, 4, type: :string
  field :authorization_url, 5, type: :string, json_name: "authorizationUrl"
  field :jwt_locations, 6, repeated: true, type: Google.Api.JwtLocation, json_name: "jwtLocations"
end
defmodule Google.Api.OAuthRequirements do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          canonical_scopes: String.t()
        }

  defstruct canonical_scopes: ""

  field :canonical_scopes, 1, type: :string, json_name: "canonicalScopes"
end
defmodule Google.Api.AuthRequirement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          provider_id: String.t(),
          audiences: String.t()
        }

  defstruct provider_id: "",
            audiences: ""

  field :provider_id, 1, type: :string, json_name: "providerId"
  field :audiences, 2, type: :string
end
