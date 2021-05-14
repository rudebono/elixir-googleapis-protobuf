defmodule Google.Ads.Googleads.V5.Services.GetAdScheduleViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.AdScheduleViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.AdScheduleViewService"

  rpc :GetAdScheduleView,
      Google.Ads.Googleads.V5.Services.GetAdScheduleViewRequest,
      Google.Ads.Googleads.V5.Resources.AdScheduleView
end

defmodule Google.Ads.Googleads.V5.Services.AdScheduleViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.AdScheduleViewService.Service
end
