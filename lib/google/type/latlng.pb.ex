defmodule Google.Type.LatLng do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          latitude: float | :infinity | :negative_infinity | :nan,
          longitude: float | :infinity | :negative_infinity | :nan
        }

  defstruct latitude: 0.0,
            longitude: 0.0

  field :latitude, 1, type: :double
  field :longitude, 2, type: :double
end
