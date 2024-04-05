defmodule Google.Cloud.Discoveryengine.V1alpha.Chunk.DocumentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string
  field :title, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Chunk.PageSpan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page_start, 1, type: :int32, json_name: "pageStart"
  field :page_end, 2, type: :int32, json_name: "pageEnd"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Chunk.ChunkMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :previous_chunks, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.Chunk,
    json_name: "previousChunks"

  field :next_chunks, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.Chunk,
    json_name: "nextChunks"
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

  field :page_span, 6,
    type: Google.Cloud.Discoveryengine.V1alpha.Chunk.PageSpan,
    json_name: "pageSpan"

  field :chunk_metadata, 7,
    type: Google.Cloud.Discoveryengine.V1alpha.Chunk.ChunkMetadata,
    json_name: "chunkMetadata",
    deprecated: false
end