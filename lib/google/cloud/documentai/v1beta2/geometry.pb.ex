defmodule Google.Cloud.Documentai.V1beta2.Vertex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: integer,
          y: integer
        }

  defstruct [:x, :y]

  field :x, 1, type: :int32
  field :y, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Documentai.V1beta2.NormalizedVertex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: float | :infinity | :negative_infinity | :nan,
          y: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:x, :y]

  field :x, 1, type: :float
  field :y, 2, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Documentai.V1beta2.BoundingPoly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vertices: [Google.Cloud.Documentai.V1beta2.Vertex.t()],
          normalized_vertices: [Google.Cloud.Documentai.V1beta2.NormalizedVertex.t()]
        }

  defstruct [:vertices, :normalized_vertices]

  field :vertices, 1, repeated: true, type: Google.Cloud.Documentai.V1beta2.Vertex

  field :normalized_vertices, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta2.NormalizedVertex,
    json_name: "normalizedVertices"

  def transform_module(), do: nil
end
