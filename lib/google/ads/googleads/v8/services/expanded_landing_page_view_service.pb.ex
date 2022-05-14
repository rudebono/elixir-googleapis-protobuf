defmodule Google.Ads.Googleads.V8.Services.GetExpandedLandingPageViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.ExpandedLandingPageViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.ExpandedLandingPageViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetExpandedLandingPageView,
      Google.Ads.Googleads.V8.Services.GetExpandedLandingPageViewRequest,
      Google.Ads.Googleads.V8.Resources.ExpandedLandingPageView
end

defmodule Google.Ads.Googleads.V8.Services.ExpandedLandingPageViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ExpandedLandingPageViewService.Service
end
