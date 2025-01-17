defmodule Google.Cloud.Discoveryengine.V1beta.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :schema, 0

  field :struct_schema, 2, type: Google.Protobuf.Struct, json_name: "structSchema", oneof: 0
  field :json_schema, 3, type: :string, json_name: "jsonSchema", oneof: 0
  field :name, 1, type: :string, deprecated: false
end
