defmodule Google.Ads.Googleads.V7.Services.GetLocationViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.LocationViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.LocationViewService"

  rpc :GetLocationView,
      Google.Ads.Googleads.V7.Services.GetLocationViewRequest,
      Google.Ads.Googleads.V7.Resources.LocationView
end

defmodule Google.Ads.Googleads.V7.Services.LocationViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.LocationViewService.Service
end
