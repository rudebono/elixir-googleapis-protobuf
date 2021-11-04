defmodule Google.Ads.Googleads.V9.Services.GetUserLocationViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.UserLocationViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.UserLocationViewService"

  rpc :GetUserLocationView,
      Google.Ads.Googleads.V9.Services.GetUserLocationViewRequest,
      Google.Ads.Googleads.V9.Resources.UserLocationView
end

defmodule Google.Ads.Googleads.V9.Services.UserLocationViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.UserLocationViewService.Service
end
