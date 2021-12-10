defmodule Google.Ads.Googleads.V9.Services.GetManagedPlacementViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.ManagedPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.ManagedPlacementViewService"

  rpc :GetManagedPlacementView,
      Google.Ads.Googleads.V9.Services.GetManagedPlacementViewRequest,
      Google.Ads.Googleads.V9.Resources.ManagedPlacementView
end

defmodule Google.Ads.Googleads.V9.Services.ManagedPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.ManagedPlacementViewService.Service
end
