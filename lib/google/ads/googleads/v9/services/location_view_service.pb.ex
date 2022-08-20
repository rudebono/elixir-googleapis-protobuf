defmodule Google.Ads.Googleads.V9.Services.GetLocationViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.LocationViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.LocationViewService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetLocationView,
      Google.Ads.Googleads.V9.Services.GetLocationViewRequest,
      Google.Ads.Googleads.V9.Resources.LocationView
end

defmodule Google.Ads.Googleads.V9.Services.LocationViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.LocationViewService.Service
end