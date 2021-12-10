defmodule Google.Type.Color do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          red: float | :infinity | :negative_infinity | :nan,
          green: float | :infinity | :negative_infinity | :nan,
          blue: float | :infinity | :negative_infinity | :nan,
          alpha: Google.Protobuf.FloatValue.t() | nil
        }

  defstruct red: 0.0,
            green: 0.0,
            blue: 0.0,
            alpha: nil

  field :red, 1, type: :float
  field :green, 2, type: :float
  field :blue, 3, type: :float
  field :alpha, 4, type: Google.Protobuf.FloatValue
end
