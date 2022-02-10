defmodule Google.Ads.Googleads.V10.Services.RegenerateShareableLinkIdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.RegenerateShareableLinkIdResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V10.Services.ThirdPartyAppAnalyticsLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.ThirdPartyAppAnalyticsLinkService"

  rpc :RegenerateShareableLinkId,
      Google.Ads.Googleads.V10.Services.RegenerateShareableLinkIdRequest,
      Google.Ads.Googleads.V10.Services.RegenerateShareableLinkIdResponse
end

defmodule Google.Ads.Googleads.V10.Services.ThirdPartyAppAnalyticsLinkService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V10.Services.ThirdPartyAppAnalyticsLinkService.Service
end
