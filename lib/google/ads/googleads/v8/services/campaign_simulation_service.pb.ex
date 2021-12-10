defmodule Google.Ads.Googleads.V8.Services.GetCampaignSimulationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.CampaignSimulationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignSimulationService"

  rpc :GetCampaignSimulation,
      Google.Ads.Googleads.V8.Services.GetCampaignSimulationRequest,
      Google.Ads.Googleads.V8.Resources.CampaignSimulation
end

defmodule Google.Ads.Googleads.V8.Services.CampaignSimulationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignSimulationService.Service
end
