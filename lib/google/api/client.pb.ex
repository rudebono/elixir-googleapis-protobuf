defmodule Google.Api.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  extend Google.Protobuf.MethodOptions, :method_signature, 1051,
    repeated: true,
    type: :string,
    json_name: "methodSignature"

  extend Google.Protobuf.ServiceOptions, :default_host, 1049,
    optional: true,
    type: :string,
    json_name: "defaultHost"

  extend Google.Protobuf.ServiceOptions, :oauth_scopes, 1050,
    optional: true,
    type: :string,
    json_name: "oauthScopes"
end