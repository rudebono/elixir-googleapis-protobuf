defmodule Google.Cloud.Discoveryengine.V1alpha.AclConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :idp_config, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.IdpConfig,
    json_name: "idpConfig"
end