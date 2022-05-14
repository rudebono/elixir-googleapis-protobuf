defmodule Google.Ads.Googleads.V7.Services.GetAdScheduleViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.AdScheduleViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.AdScheduleViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetAdScheduleView,
      Google.Ads.Googleads.V7.Services.GetAdScheduleViewRequest,
      Google.Ads.Googleads.V7.Resources.AdScheduleView
end

defmodule Google.Ads.Googleads.V7.Services.AdScheduleViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.AdScheduleViewService.Service
end
