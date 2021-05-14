defmodule Google.Ads.Googleads.V4.Services.GetAdGroupAdAssetViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupAdAssetViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.AdGroupAdAssetViewService"

  rpc :GetAdGroupAdAssetView,
      Google.Ads.Googleads.V4.Services.GetAdGroupAdAssetViewRequest,
      Google.Ads.Googleads.V4.Resources.AdGroupAdAssetView
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupAdAssetViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.AdGroupAdAssetViewService.Service
end
