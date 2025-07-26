defmodule Google.Maps.Routes.V1.FallbackReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FALLBACK_REASON_UNSPECIFIED, 0
  field :SERVER_ERROR, 1
  field :LATENCY_EXCEEDED, 2
end

defmodule Google.Maps.Routes.V1.FallbackRoutingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FALLBACK_ROUTING_MODE_UNSPECIFIED, 0
  field :FALLBACK_TRAFFIC_UNAWARE, 1
  field :FALLBACK_TRAFFIC_AWARE, 2
end

defmodule Google.Maps.Routes.V1.FallbackInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :routing_mode, 1,
    type: Google.Maps.Routes.V1.FallbackRoutingMode,
    json_name: "routingMode",
    enum: true

  field :reason, 2, type: Google.Maps.Routes.V1.FallbackReason, enum: true
end
