defmodule Google.Ads.Googleads.V8.Services.GetCampaignCriterionSimulationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.CampaignCriterionSimulationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignCriterionSimulationService"

  rpc :GetCampaignCriterionSimulation,
      Google.Ads.Googleads.V8.Services.GetCampaignCriterionSimulationRequest,
      Google.Ads.Googleads.V8.Resources.CampaignCriterionSimulation
end

defmodule Google.Ads.Googleads.V8.Services.CampaignCriterionSimulationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.CampaignCriterionSimulationService.Service
end
