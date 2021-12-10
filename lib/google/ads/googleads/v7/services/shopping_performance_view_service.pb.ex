defmodule Google.Ads.Googleads.V7.Services.GetShoppingPerformanceViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.ShoppingPerformanceViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.ShoppingPerformanceViewService"

  rpc :GetShoppingPerformanceView,
      Google.Ads.Googleads.V7.Services.GetShoppingPerformanceViewRequest,
      Google.Ads.Googleads.V7.Resources.ShoppingPerformanceView
end

defmodule Google.Ads.Googleads.V7.Services.ShoppingPerformanceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.ShoppingPerformanceViewService.Service
end
