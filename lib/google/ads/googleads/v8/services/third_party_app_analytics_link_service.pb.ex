defmodule Google.Ads.Googleads.V8.Services.GetThirdPartyAppAnalyticsLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.RegenerateShareableLinkIdRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.RegenerateShareableLinkIdResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Ads.Googleads.V8.Services.ThirdPartyAppAnalyticsLinkService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.ThirdPartyAppAnalyticsLinkService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetThirdPartyAppAnalyticsLink,
      Google.Ads.Googleads.V8.Services.GetThirdPartyAppAnalyticsLinkRequest,
      Google.Ads.Googleads.V8.Resources.ThirdPartyAppAnalyticsLink

  rpc :RegenerateShareableLinkId,
      Google.Ads.Googleads.V8.Services.RegenerateShareableLinkIdRequest,
      Google.Ads.Googleads.V8.Services.RegenerateShareableLinkIdResponse
end

defmodule Google.Ads.Googleads.V8.Services.ThirdPartyAppAnalyticsLinkService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.ThirdPartyAppAnalyticsLinkService.Service
end
