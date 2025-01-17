defmodule Google.Maps.Routes.V1.ComputeRoutesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :routes, 1, repeated: true, type: Google.Maps.Routes.V1.Route
  field :fallback_info, 2, type: Google.Maps.Routes.V1.FallbackInfo, json_name: "fallbackInfo"
end
