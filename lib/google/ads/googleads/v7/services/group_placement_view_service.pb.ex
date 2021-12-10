defmodule Google.Ads.Googleads.V7.Services.GetGroupPlacementViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.GroupPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.GroupPlacementViewService"

  rpc :GetGroupPlacementView,
      Google.Ads.Googleads.V7.Services.GetGroupPlacementViewRequest,
      Google.Ads.Googleads.V7.Resources.GroupPlacementView
end

defmodule Google.Ads.Googleads.V7.Services.GroupPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.GroupPlacementViewService.Service
end
