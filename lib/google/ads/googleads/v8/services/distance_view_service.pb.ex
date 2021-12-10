defmodule Google.Ads.Googleads.V8.Services.GetDistanceViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.DistanceViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.DistanceViewService"

  rpc :GetDistanceView,
      Google.Ads.Googleads.V8.Services.GetDistanceViewRequest,
      Google.Ads.Googleads.V8.Resources.DistanceView
end

defmodule Google.Ads.Googleads.V8.Services.DistanceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.DistanceViewService.Service
end
