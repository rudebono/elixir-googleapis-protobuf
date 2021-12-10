defmodule Google.Ads.Googleads.V9.Services.GetDetailedDemographicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.DetailedDemographicService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.DetailedDemographicService"

  rpc :GetDetailedDemographic,
      Google.Ads.Googleads.V9.Services.GetDetailedDemographicRequest,
      Google.Ads.Googleads.V9.Resources.DetailedDemographic
end

defmodule Google.Ads.Googleads.V9.Services.DetailedDemographicService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.DetailedDemographicService.Service
end
