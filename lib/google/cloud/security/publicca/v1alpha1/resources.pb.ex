defmodule Google.Cloud.Security.Publicca.V1alpha1.ExternalAccountKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :key_id, 2, type: :string, json_name: "keyId", deprecated: false
  field :b64_mac_key, 3, type: :bytes, json_name: "b64MacKey", deprecated: false
end
