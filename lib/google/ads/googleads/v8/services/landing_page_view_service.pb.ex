defmodule Google.Ads.Googleads.V8.Services.GetLandingPageViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.LandingPageViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.LandingPageViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetLandingPageView,
      Google.Ads.Googleads.V8.Services.GetLandingPageViewRequest,
      Google.Ads.Googleads.V8.Resources.LandingPageView
end

defmodule Google.Ads.Googleads.V8.Services.LandingPageViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.LandingPageViewService.Service
end
