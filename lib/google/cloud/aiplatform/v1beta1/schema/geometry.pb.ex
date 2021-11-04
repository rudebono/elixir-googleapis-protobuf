defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Vertex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: float | :infinity | :negative_infinity | :nan,
          y: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:x, :y]

  field :x, 1, type: :double
  field :y, 2, type: :double

  def transform_module(), do: nil
end
