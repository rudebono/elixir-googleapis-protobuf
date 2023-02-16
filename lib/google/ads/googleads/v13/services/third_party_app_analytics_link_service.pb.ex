defmodule Google.Ads.Googleads.V13.Services.RegenerateShareableLinkIdRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.RegenerateShareableLinkIdResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V13.Services.ThirdPartyAppAnalyticsLinkService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v13.services.ThirdPartyAppAnalyticsLinkService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :RegenerateShareableLinkId,
      Google.Ads.Googleads.V13.Services.RegenerateShareableLinkIdRequest,
      Google.Ads.Googleads.V13.Services.RegenerateShareableLinkIdResponse
end

defmodule Google.Ads.Googleads.V13.Services.ThirdPartyAppAnalyticsLinkService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V13.Services.ThirdPartyAppAnalyticsLinkService.Service
end