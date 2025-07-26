defmodule Google.Cloud.Discoveryengine.V1.Chunk.StructureType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STRUCTURE_TYPE_UNSPECIFIED, 0
  field :SHAREHOLDER_STRUCTURE, 1
  field :SIGNATURE_STRUCTURE, 2
  field :CHECKBOX_STRUCTURE, 3
end

defmodule Google.Cloud.Discoveryengine.V1.Chunk.DocumentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string
  field :title, 2, type: :string
  field :struct_data, 3, type: Google.Protobuf.Struct, json_name: "structData"
end

defmodule Google.Cloud.Discoveryengine.V1.Chunk.PageSpan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_start, 1, type: :int32, json_name: "pageStart"
  field :page_end, 2, type: :int32, json_name: "pageEnd"
end

defmodule Google.Cloud.Discoveryengine.V1.Chunk.ChunkMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :previous_chunks, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Chunk,
    json_name: "previousChunks"

  field :next_chunks, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Chunk,
    json_name: "nextChunks"
end

defmodule Google.Cloud.Discoveryengine.V1.Chunk.StructuredContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :structure_type, 1,
    type: Google.Cloud.Discoveryengine.V1.Chunk.StructureType,
    json_name: "structureType",
    enum: true,
    deprecated: false

  field :content, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Chunk.AnnotationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :structured_content, 1,
    type: Google.Cloud.Discoveryengine.V1.Chunk.StructuredContent,
    json_name: "structuredContent",
    deprecated: false

  field :image_id, 2, type: :string, json_name: "imageId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Chunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :content, 3, type: :string

  field :relevance_score, 8,
    proto3_optional: true,
    type: :double,
    json_name: "relevanceScore",
    deprecated: false

  field :document_metadata, 5,
    type: Google.Cloud.Discoveryengine.V1.Chunk.DocumentMetadata,
    json_name: "documentMetadata"

  field :derived_struct_data, 4,
    type: Google.Protobuf.Struct,
    json_name: "derivedStructData",
    deprecated: false

  field :page_span, 6, type: Google.Cloud.Discoveryengine.V1.Chunk.PageSpan, json_name: "pageSpan"

  field :chunk_metadata, 7,
    type: Google.Cloud.Discoveryengine.V1.Chunk.ChunkMetadata,
    json_name: "chunkMetadata",
    deprecated: false

  field :data_urls, 9, repeated: true, type: :string, json_name: "dataUrls", deprecated: false

  field :annotation_contents, 11,
    repeated: true,
    type: :string,
    json_name: "annotationContents",
    deprecated: false

  field :annotation_metadata, 12,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Chunk.AnnotationMetadata,
    json_name: "annotationMetadata",
    deprecated: false
end
