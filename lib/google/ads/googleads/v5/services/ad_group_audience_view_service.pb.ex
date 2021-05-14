defmodule Google.Ads.Googleads.V5.Services.GetAdGroupAudienceViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.AdGroupAudienceViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.AdGroupAudienceViewService"

  rpc :GetAdGroupAudienceView,
      Google.Ads.Googleads.V5.Services.GetAdGroupAudienceViewRequest,
      Google.Ads.Googleads.V5.Resources.AdGroupAudienceView
end

defmodule Google.Ads.Googleads.V5.Services.AdGroupAudienceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.AdGroupAudienceViewService.Service
end
