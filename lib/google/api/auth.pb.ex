defmodule Google.Api.Authentication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rules, 3, repeated: true, type: Google.Api.AuthenticationRule
  field :providers, 4, repeated: true, type: Google.Api.AuthProvider
end

defmodule Google.Api.AuthenticationRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :selector, 1, type: :string
  field :oauth, 2, type: Google.Api.OAuthRequirements
  field :allow_without_credential, 5, type: :bool, json_name: "allowWithoutCredential"
  field :requirements, 7, repeated: true, type: Google.Api.AuthRequirement
end

defmodule Google.Api.JwtLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :in, 0

  field :header, 1, type: :string, oneof: 0
  field :query, 2, type: :string, oneof: 0
  field :cookie, 4, type: :string, oneof: 0
  field :value_prefix, 3, type: :string, json_name: "valuePrefix"
end

defmodule Google.Api.AuthProvider do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string
  field :issuer, 2, type: :string
  field :jwks_uri, 3, type: :string, json_name: "jwksUri"
  field :audiences, 4, type: :string
  field :authorization_url, 5, type: :string, json_name: "authorizationUrl"
  field :jwt_locations, 6, repeated: true, type: Google.Api.JwtLocation, json_name: "jwtLocations"
end

defmodule Google.Api.OAuthRequirements do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :canonical_scopes, 1, type: :string, json_name: "canonicalScopes"
end

defmodule Google.Api.AuthRequirement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :provider_id, 1, type: :string, json_name: "providerId"
  field :audiences, 2, type: :string
end
