defmodule Google.Ads.Googleads.V8.Services.GetHotelGroupViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.HotelGroupViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.HotelGroupViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetHotelGroupView,
      Google.Ads.Googleads.V8.Services.GetHotelGroupViewRequest,
      Google.Ads.Googleads.V8.Resources.HotelGroupView
end

defmodule Google.Ads.Googleads.V8.Services.HotelGroupViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.HotelGroupViewService.Service
end
