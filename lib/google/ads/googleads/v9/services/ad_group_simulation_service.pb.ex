defmodule Google.Ads.Googleads.V9.Services.GetAdGroupSimulationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupSimulationService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.AdGroupSimulationService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetAdGroupSimulation,
      Google.Ads.Googleads.V9.Services.GetAdGroupSimulationRequest,
      Google.Ads.Googleads.V9.Resources.AdGroupSimulation
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupSimulationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.AdGroupSimulationService.Service
end