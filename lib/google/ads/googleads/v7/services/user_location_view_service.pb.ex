defmodule Google.Ads.Googleads.V7.Services.GetUserLocationViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.UserLocationViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.UserLocationViewService"

  rpc :GetUserLocationView,
      Google.Ads.Googleads.V7.Services.GetUserLocationViewRequest,
      Google.Ads.Googleads.V7.Resources.UserLocationView
end

defmodule Google.Ads.Googleads.V7.Services.UserLocationViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.UserLocationViewService.Service
end
