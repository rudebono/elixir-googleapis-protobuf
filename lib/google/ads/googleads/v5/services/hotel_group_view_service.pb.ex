defmodule Google.Ads.Googleads.V5.Services.GetHotelGroupViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.HotelGroupViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.HotelGroupViewService"

  rpc :GetHotelGroupView,
      Google.Ads.Googleads.V5.Services.GetHotelGroupViewRequest,
      Google.Ads.Googleads.V5.Resources.HotelGroupView
end

defmodule Google.Ads.Googleads.V5.Services.HotelGroupViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.HotelGroupViewService.Service
end
