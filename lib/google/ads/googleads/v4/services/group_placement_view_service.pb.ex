defmodule Google.Ads.Googleads.V4.Services.GetGroupPlacementViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GroupPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.GroupPlacementViewService"

  rpc :GetGroupPlacementView,
      Google.Ads.Googleads.V4.Services.GetGroupPlacementViewRequest,
      Google.Ads.Googleads.V4.Resources.GroupPlacementView
end

defmodule Google.Ads.Googleads.V4.Services.GroupPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.GroupPlacementViewService.Service
end
