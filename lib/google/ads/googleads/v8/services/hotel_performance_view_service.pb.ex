defmodule Google.Ads.Googleads.V8.Services.GetHotelPerformanceViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.HotelPerformanceViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.HotelPerformanceViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetHotelPerformanceView,
      Google.Ads.Googleads.V8.Services.GetHotelPerformanceViewRequest,
      Google.Ads.Googleads.V8.Resources.HotelPerformanceView
end

defmodule Google.Ads.Googleads.V8.Services.HotelPerformanceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.HotelPerformanceViewService.Service
end
