defmodule Google.Ads.Googleads.V7.Services.GetCampaignSimulationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.CampaignSimulationService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.CampaignSimulationService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetCampaignSimulation,
      Google.Ads.Googleads.V7.Services.GetCampaignSimulationRequest,
      Google.Ads.Googleads.V7.Resources.CampaignSimulation
end

defmodule Google.Ads.Googleads.V7.Services.CampaignSimulationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CampaignSimulationService.Service
end
