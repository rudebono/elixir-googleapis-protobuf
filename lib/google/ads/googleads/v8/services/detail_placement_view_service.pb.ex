defmodule Google.Ads.Googleads.V8.Services.GetDetailPlacementViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.DetailPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.DetailPlacementViewService"

  rpc :GetDetailPlacementView,
      Google.Ads.Googleads.V8.Services.GetDetailPlacementViewRequest,
      Google.Ads.Googleads.V8.Resources.DetailPlacementView
end

defmodule Google.Ads.Googleads.V8.Services.DetailPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.DetailPlacementViewService.Service
end
