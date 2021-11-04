defmodule Google.Type.LatLng do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          latitude: float | :infinity | :negative_infinity | :nan,
          longitude: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:latitude, :longitude]

  field :latitude, 1, type: :double
  field :longitude, 2, type: :double

  def transform_module(), do: nil
end
