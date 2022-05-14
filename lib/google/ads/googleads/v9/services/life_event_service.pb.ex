defmodule Google.Ads.Googleads.V9.Services.GetLifeEventRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.LifeEventService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.LifeEventService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetLifeEvent,
      Google.Ads.Googleads.V9.Services.GetLifeEventRequest,
      Google.Ads.Googleads.V9.Resources.LifeEvent
end

defmodule Google.Ads.Googleads.V9.Services.LifeEventService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.LifeEventService.Service
end
