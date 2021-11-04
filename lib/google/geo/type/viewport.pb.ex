defmodule Google.Geo.Type.Viewport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          low: Google.Type.LatLng.t() | nil,
          high: Google.Type.LatLng.t() | nil
        }

  defstruct [:low, :high]

  field :low, 1, type: Google.Type.LatLng
  field :high, 2, type: Google.Type.LatLng

  def transform_module(), do: nil
end
