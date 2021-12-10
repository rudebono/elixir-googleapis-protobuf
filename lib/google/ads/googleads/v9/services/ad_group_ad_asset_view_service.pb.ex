defmodule Google.Ads.Googleads.V9.Services.GetAdGroupAdAssetViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.AdGroupAdAssetViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.AdGroupAdAssetViewService"

  rpc :GetAdGroupAdAssetView,
      Google.Ads.Googleads.V9.Services.GetAdGroupAdAssetViewRequest,
      Google.Ads.Googleads.V9.Resources.AdGroupAdAssetView
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupAdAssetViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.AdGroupAdAssetViewService.Service
end
