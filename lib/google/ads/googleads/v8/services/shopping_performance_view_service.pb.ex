defmodule Google.Ads.Googleads.V8.Services.GetShoppingPerformanceViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.ShoppingPerformanceViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.ShoppingPerformanceViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetShoppingPerformanceView,
      Google.Ads.Googleads.V8.Services.GetShoppingPerformanceViewRequest,
      Google.Ads.Googleads.V8.Resources.ShoppingPerformanceView
end

defmodule Google.Ads.Googleads.V8.Services.ShoppingPerformanceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ShoppingPerformanceViewService.Service
end
