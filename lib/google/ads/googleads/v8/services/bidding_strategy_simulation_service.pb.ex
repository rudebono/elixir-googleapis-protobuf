defmodule Google.Ads.Googleads.V8.Services.GetBiddingStrategySimulationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.BiddingStrategySimulationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.BiddingStrategySimulationService"

  rpc :GetBiddingStrategySimulation,
      Google.Ads.Googleads.V8.Services.GetBiddingStrategySimulationRequest,
      Google.Ads.Googleads.V8.Resources.BiddingStrategySimulation
end

defmodule Google.Ads.Googleads.V8.Services.BiddingStrategySimulationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.BiddingStrategySimulationService.Service
end
