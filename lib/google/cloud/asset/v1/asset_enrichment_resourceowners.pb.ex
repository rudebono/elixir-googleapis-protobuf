defmodule Google.Cloud.Asset.V1.ResourceOwners do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_owners, 1, repeated: true, type: :string, json_name: "resourceOwners"
end
