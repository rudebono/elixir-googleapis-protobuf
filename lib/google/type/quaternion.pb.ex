defmodule Google.Type.Quaternion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: float | :infinity | :negative_infinity | :nan,
          y: float | :infinity | :negative_infinity | :nan,
          z: float | :infinity | :negative_infinity | :nan,
          w: float | :infinity | :negative_infinity | :nan
        }

  defstruct x: 0.0,
            y: 0.0,
            z: 0.0,
            w: 0.0

  field :x, 1, type: :double
  field :y, 2, type: :double
  field :z, 3, type: :double
  field :w, 4, type: :double
end
