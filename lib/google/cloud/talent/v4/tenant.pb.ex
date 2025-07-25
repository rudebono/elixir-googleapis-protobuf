defmodule Google.Cloud.Talent.V4.Tenant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :external_id, 2, type: :string, json_name: "externalId", deprecated: false
end
