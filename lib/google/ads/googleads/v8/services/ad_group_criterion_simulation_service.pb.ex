defmodule Google.Ads.Googleads.V8.Services.GetAdGroupCriterionSimulationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupCriterionSimulationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AdGroupCriterionSimulationService"

  rpc :GetAdGroupCriterionSimulation,
      Google.Ads.Googleads.V8.Services.GetAdGroupCriterionSimulationRequest,
      Google.Ads.Googleads.V8.Resources.AdGroupCriterionSimulation
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupCriterionSimulationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.AdGroupCriterionSimulationService.Service
end
