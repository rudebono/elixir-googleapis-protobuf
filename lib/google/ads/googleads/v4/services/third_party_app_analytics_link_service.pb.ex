defmodule Google.Ads.Googleads.V4.Services.GetThirdPartyAppAnalyticsLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.ThirdPartyAppAnalyticsLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.ThirdPartyAppAnalyticsLinkService"

  rpc :GetThirdPartyAppAnalyticsLink,
      Google.Ads.Googleads.V4.Services.GetThirdPartyAppAnalyticsLinkRequest,
      Google.Ads.Googleads.V4.Resources.ThirdPartyAppAnalyticsLink
end

defmodule Google.Ads.Googleads.V4.Services.ThirdPartyAppAnalyticsLinkService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V4.Services.ThirdPartyAppAnalyticsLinkService.Service
end
