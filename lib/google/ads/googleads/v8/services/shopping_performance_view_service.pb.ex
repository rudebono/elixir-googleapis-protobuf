defmodule Google.Ads.Googleads.V8.Services.GetShoppingPerformanceViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ShoppingPerformanceViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.ShoppingPerformanceViewService"

  rpc :GetShoppingPerformanceView,
      Google.Ads.Googleads.V8.Services.GetShoppingPerformanceViewRequest,
      Google.Ads.Googleads.V8.Resources.ShoppingPerformanceView
end

defmodule Google.Ads.Googleads.V8.Services.ShoppingPerformanceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ShoppingPerformanceViewService.Service
end
