defmodule Google.Ads.Googleads.V8.Services.GetAdGroupSimulationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupSimulationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AdGroupSimulationService"

  rpc :GetAdGroupSimulation,
      Google.Ads.Googleads.V8.Services.GetAdGroupSimulationRequest,
      Google.Ads.Googleads.V8.Resources.AdGroupSimulation
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupSimulationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AdGroupSimulationService.Service
end
