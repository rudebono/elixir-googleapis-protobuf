defmodule Google.Api.Expr.V1beta1.SourceInfo.PositionsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: integer,
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :int32
  field :value, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1beta1.SourceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          line_offsets: [integer],
          positions: %{integer => integer}
        }

  defstruct [:location, :line_offsets, :positions]

  field :location, 2, type: :string
  field :line_offsets, 3, repeated: true, type: :int32, json_name: "lineOffsets"

  field :positions, 4,
    repeated: true,
    type: Google.Api.Expr.V1beta1.SourceInfo.PositionsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1beta1.SourcePosition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          offset: integer,
          line: integer,
          column: integer
        }

  defstruct [:location, :offset, :line, :column]

  field :location, 1, type: :string
  field :offset, 2, type: :int32
  field :line, 3, type: :int32
  field :column, 4, type: :int32

  def transform_module(), do: nil
end
