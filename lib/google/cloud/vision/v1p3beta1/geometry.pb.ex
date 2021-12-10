defmodule Google.Cloud.Vision.V1p3beta1.Vertex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: integer,
          y: integer
        }

  defstruct x: 0,
            y: 0

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end
defmodule Google.Cloud.Vision.V1p3beta1.NormalizedVertex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: float | :infinity | :negative_infinity | :nan,
          y: float | :infinity | :negative_infinity | :nan
        }

  defstruct x: 0.0,
            y: 0.0

  field :x, 1, type: :float
  field :y, 2, type: :float
end
defmodule Google.Cloud.Vision.V1p3beta1.BoundingPoly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vertices: [Google.Cloud.Vision.V1p3beta1.Vertex.t()],
          normalized_vertices: [Google.Cloud.Vision.V1p3beta1.NormalizedVertex.t()]
        }

  defstruct vertices: [],
            normalized_vertices: []

  field :vertices, 1, repeated: true, type: Google.Cloud.Vision.V1p3beta1.Vertex

  field :normalized_vertices, 2,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.NormalizedVertex,
    json_name: "normalizedVertices"
end
defmodule Google.Cloud.Vision.V1p3beta1.NormalizedBoundingPoly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vertices: [Google.Cloud.Vision.V1p3beta1.NormalizedVertex.t()]
        }

  defstruct vertices: []

  field :vertices, 1, repeated: true, type: Google.Cloud.Vision.V1p3beta1.NormalizedVertex
end
defmodule Google.Cloud.Vision.V1p3beta1.Position do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: float | :infinity | :negative_infinity | :nan,
          y: float | :infinity | :negative_infinity | :nan,
          z: float | :infinity | :negative_infinity | :nan
        }

  defstruct x: 0.0,
            y: 0.0,
            z: 0.0

  field :x, 1, type: :float
  field :y, 2, type: :float
  field :z, 3, type: :float
end
