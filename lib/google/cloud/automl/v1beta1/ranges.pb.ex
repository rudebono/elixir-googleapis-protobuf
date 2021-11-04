defmodule Google.Cloud.Automl.V1beta1.DoubleRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start: float | :infinity | :negative_infinity | :nan,
          end: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:start, :end]

  field :start, 1, type: :double
  field :end, 2, type: :double

  def transform_module(), do: nil
end
