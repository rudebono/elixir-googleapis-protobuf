defmodule Google.Ads.Googleads.V7.Services.GetCampaignSimulationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.CampaignSimulationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.CampaignSimulationService"

  rpc :GetCampaignSimulation,
      Google.Ads.Googleads.V7.Services.GetCampaignSimulationRequest,
      Google.Ads.Googleads.V7.Resources.CampaignSimulation
end

defmodule Google.Ads.Googleads.V7.Services.CampaignSimulationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CampaignSimulationService.Service
end
