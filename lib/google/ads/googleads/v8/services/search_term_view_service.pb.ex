defmodule Google.Ads.Googleads.V8.Services.GetSearchTermViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.SearchTermViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.SearchTermViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetSearchTermView,
      Google.Ads.Googleads.V8.Services.GetSearchTermViewRequest,
      Google.Ads.Googleads.V8.Resources.SearchTermView
end

defmodule Google.Ads.Googleads.V8.Services.SearchTermViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.SearchTermViewService.Service
end
