defmodule Google.Ads.Googleads.V8.Services.GetWebpageViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.WebpageViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.WebpageViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetWebpageView,
      Google.Ads.Googleads.V8.Services.GetWebpageViewRequest,
      Google.Ads.Googleads.V8.Resources.WebpageView
end

defmodule Google.Ads.Googleads.V8.Services.WebpageViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.WebpageViewService.Service
end
