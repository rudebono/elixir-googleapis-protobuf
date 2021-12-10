defmodule Google.Ads.Googleads.V8.Services.GetUserLocationViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.UserLocationViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.UserLocationViewService"

  rpc :GetUserLocationView,
      Google.Ads.Googleads.V8.Services.GetUserLocationViewRequest,
      Google.Ads.Googleads.V8.Resources.UserLocationView
end

defmodule Google.Ads.Googleads.V8.Services.UserLocationViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.UserLocationViewService.Service
end
