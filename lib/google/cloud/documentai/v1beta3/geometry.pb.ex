defmodule Google.Cloud.Documentai.V1beta3.Vertex do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule Google.Cloud.Documentai.V1beta3.NormalizedVertex do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :float
  field :y, 2, type: :float
end

defmodule Google.Cloud.Documentai.V1beta3.BoundingPoly do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vertices, 1, repeated: true, type: Google.Cloud.Documentai.V1beta3.Vertex

  field :normalized_vertices, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.NormalizedVertex,
    json_name: "normalizedVertices"
end