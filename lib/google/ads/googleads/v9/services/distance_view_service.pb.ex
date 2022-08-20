defmodule Google.Ads.Googleads.V9.Services.GetDistanceViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.DistanceViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.DistanceViewService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetDistanceView,
      Google.Ads.Googleads.V9.Services.GetDistanceViewRequest,
      Google.Ads.Googleads.V9.Resources.DistanceView
end

defmodule Google.Ads.Googleads.V9.Services.DistanceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.DistanceViewService.Service
end