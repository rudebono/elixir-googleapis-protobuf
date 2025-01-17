defmodule Google.Cloud.Discoveryengine.V1alpha.GroundingFact.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GroundingFact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :fact_text, 1, type: :string, json_name: "factText"

  field :attributes, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.GroundingFact.AttributesEntry,
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FactChunk.SourceMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FactChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :chunk_text, 1, type: :string, json_name: "chunkText"
  field :source, 2, type: :string
  field :index, 4, type: :int32

  field :source_metadata, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.FactChunk.SourceMetadataEntry,
    json_name: "sourceMetadata",
    map: true
end
