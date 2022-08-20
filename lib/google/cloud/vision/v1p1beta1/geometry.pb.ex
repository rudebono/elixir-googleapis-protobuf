defmodule Google.Cloud.Vision.V1p1beta1.Vertex do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule Google.Cloud.Vision.V1p1beta1.BoundingPoly do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vertices, 1, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Vertex
end

defmodule Google.Cloud.Vision.V1p1beta1.Position do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :float
  field :y, 2, type: :float
  field :z, 3, type: :float
end