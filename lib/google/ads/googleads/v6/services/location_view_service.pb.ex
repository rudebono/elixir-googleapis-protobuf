defmodule Google.Ads.Googleads.V6.Services.GetLocationViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V6.Services.LocationViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v6.services.LocationViewService"

  rpc :GetLocationView,
      Google.Ads.Googleads.V6.Services.GetLocationViewRequest,
      Google.Ads.Googleads.V6.Resources.LocationView
end

defmodule Google.Ads.Googleads.V6.Services.LocationViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V6.Services.LocationViewService.Service
end
