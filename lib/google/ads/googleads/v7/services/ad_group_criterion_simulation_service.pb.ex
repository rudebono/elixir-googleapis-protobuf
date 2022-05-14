defmodule Google.Ads.Googleads.V7.Services.GetAdGroupCriterionSimulationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.AdGroupCriterionSimulationService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.AdGroupCriterionSimulationService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetAdGroupCriterionSimulation,
      Google.Ads.Googleads.V7.Services.GetAdGroupCriterionSimulationRequest,
      Google.Ads.Googleads.V7.Resources.AdGroupCriterionSimulation
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupCriterionSimulationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V7.Services.AdGroupCriterionSimulationService.Service
end
