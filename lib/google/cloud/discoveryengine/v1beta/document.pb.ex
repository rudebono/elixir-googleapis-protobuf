defmodule Google.Cloud.Discoveryengine.V1beta.Document do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :data, 0

  field :struct_data, 4, type: Google.Protobuf.Struct, json_name: "structData", oneof: 0
  field :json_data, 5, type: :string, json_name: "jsonData", oneof: 0
  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :schema_id, 3, type: :string, json_name: "schemaId", deprecated: false
  field :parent_document_id, 7, type: :string, json_name: "parentDocumentId"
end