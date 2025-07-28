defmodule Google.Cloud.Discoveryengine.V1.GroundingFact.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.GroundingFact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fact_text, 1, type: :string, json_name: "factText"

  field :attributes, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.GroundingFact.AttributesEntry,
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1.FactChunk.SourceMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.FactChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :chunk_text, 1, type: :string, json_name: "chunkText"
  field :source, 2, type: :string
  field :index, 4, type: :int32

  field :source_metadata, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.FactChunk.SourceMetadataEntry,
    json_name: "sourceMetadata",
    map: true

  field :uri, 5, type: :string
  field :title, 6, type: :string
  field :domain, 7, type: :string
end
