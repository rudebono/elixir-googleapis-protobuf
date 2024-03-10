defmodule Google.Cloud.Discoveryengine.V1alpha.Chunk.DocumentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string
  field :title, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Chunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :content, 3, type: :string

  field :document_metadata, 5,
    type: Google.Cloud.Discoveryengine.V1alpha.Chunk.DocumentMetadata,
    json_name: "documentMetadata"

  field :derived_struct_data, 4,
    type: Google.Protobuf.Struct,
    json_name: "derivedStructData",
    deprecated: false
end