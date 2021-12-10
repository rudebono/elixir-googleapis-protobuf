defmodule Google.Ads.Googleads.V9.Services.GetHotelPerformanceViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.HotelPerformanceViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.HotelPerformanceViewService"

  rpc :GetHotelPerformanceView,
      Google.Ads.Googleads.V9.Services.GetHotelPerformanceViewRequest,
      Google.Ads.Googleads.V9.Resources.HotelPerformanceView
end

defmodule Google.Ads.Googleads.V9.Services.HotelPerformanceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.HotelPerformanceViewService.Service
end
