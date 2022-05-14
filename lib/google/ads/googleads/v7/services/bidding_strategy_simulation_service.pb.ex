defmodule Google.Ads.Googleads.V7.Services.GetBiddingStrategySimulationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.BiddingStrategySimulationService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.BiddingStrategySimulationService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetBiddingStrategySimulation,
      Google.Ads.Googleads.V7.Services.GetBiddingStrategySimulationRequest,
      Google.Ads.Googleads.V7.Resources.BiddingStrategySimulation
end

defmodule Google.Ads.Googleads.V7.Services.BiddingStrategySimulationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V7.Services.BiddingStrategySimulationService.Service
end
