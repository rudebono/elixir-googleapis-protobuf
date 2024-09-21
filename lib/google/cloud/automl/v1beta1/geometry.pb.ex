defmodule Google.Cloud.Automl.V1beta1.NormalizedVertex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :x, 1, type: :float
  field :y, 2, type: :float
end

defmodule Google.Cloud.Automl.V1beta1.BoundingPoly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :normalized_vertices, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.NormalizedVertex,
    json_name: "normalizedVertices"
end