defmodule Google.Cloud.Discoveryengine.V1alpha.Document.Content do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :content, 0

  field :raw_bytes, 2, type: :bytes, json_name: "rawBytes", oneof: 0
  field :uri, 3, type: :string, oneof: 0
  field :mime_type, 1, type: :string, json_name: "mimeType"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Document do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data, 0

  field :struct_data, 4, type: Google.Protobuf.Struct, json_name: "structData", oneof: 0
  field :json_data, 5, type: :string, json_name: "jsonData", oneof: 0
  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :schema_id, 3, type: :string, json_name: "schemaId"
  field :content, 10, type: Google.Cloud.Discoveryengine.V1alpha.Document.Content
  field :parent_document_id, 7, type: :string, json_name: "parentDocumentId"

  field :derived_struct_data, 6,
    type: Google.Protobuf.Struct,
    json_name: "derivedStructData",
    deprecated: false
end