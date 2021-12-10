defmodule Google.Maps.Routes.V1.FallbackReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :FALLBACK_REASON_UNSPECIFIED | :SERVER_ERROR | :LATENCY_EXCEEDED

  field :FALLBACK_REASON_UNSPECIFIED, 0
  field :SERVER_ERROR, 1
  field :LATENCY_EXCEEDED, 2
end
defmodule Google.Maps.Routes.V1.FallbackRoutingMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FALLBACK_ROUTING_MODE_UNSPECIFIED
          | :FALLBACK_TRAFFIC_UNAWARE
          | :FALLBACK_TRAFFIC_AWARE

  field :FALLBACK_ROUTING_MODE_UNSPECIFIED, 0
  field :FALLBACK_TRAFFIC_UNAWARE, 1
  field :FALLBACK_TRAFFIC_AWARE, 2
end
defmodule Google.Maps.Routes.V1.FallbackInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routing_mode: Google.Maps.Routes.V1.FallbackRoutingMode.t(),
          reason: Google.Maps.Routes.V1.FallbackReason.t()
        }

  defstruct routing_mode: :FALLBACK_ROUTING_MODE_UNSPECIFIED,
            reason: :FALLBACK_REASON_UNSPECIFIED

  field :routing_mode, 1,
    type: Google.Maps.Routes.V1.FallbackRoutingMode,
    json_name: "routingMode",
    enum: true

  field :reason, 2, type: Google.Maps.Routes.V1.FallbackReason, enum: true
end
