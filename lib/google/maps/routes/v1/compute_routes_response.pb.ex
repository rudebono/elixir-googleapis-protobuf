defmodule Google.Maps.Routes.V1.ComputeRoutesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routes: [Google.Maps.Routes.V1.Route.t()],
          fallback_info: Google.Maps.Routes.V1.FallbackInfo.t() | nil
        }

  defstruct [:routes, :fallback_info]

  field :routes, 1, repeated: true, type: Google.Maps.Routes.V1.Route
  field :fallback_info, 2, type: Google.Maps.Routes.V1.FallbackInfo, json_name: "fallbackInfo"

  def transform_module(), do: nil
end
