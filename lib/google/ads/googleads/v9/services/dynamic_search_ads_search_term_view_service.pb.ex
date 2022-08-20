defmodule Google.Ads.Googleads.V9.Services.GetDynamicSearchAdsSearchTermViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.DynamicSearchAdsSearchTermViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.DynamicSearchAdsSearchTermViewService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetDynamicSearchAdsSearchTermView,
      Google.Ads.Googleads.V9.Services.GetDynamicSearchAdsSearchTermViewRequest,
      Google.Ads.Googleads.V9.Resources.DynamicSearchAdsSearchTermView
end

defmodule Google.Ads.Googleads.V9.Services.DynamicSearchAdsSearchTermViewService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V9.Services.DynamicSearchAdsSearchTermViewService.Service
end