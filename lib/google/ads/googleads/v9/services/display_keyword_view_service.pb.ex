defmodule Google.Ads.Googleads.V9.Services.GetDisplayKeywordViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.DisplayKeywordViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.DisplayKeywordViewService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetDisplayKeywordView,
      Google.Ads.Googleads.V9.Services.GetDisplayKeywordViewRequest,
      Google.Ads.Googleads.V9.Resources.DisplayKeywordView
end

defmodule Google.Ads.Googleads.V9.Services.DisplayKeywordViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.DisplayKeywordViewService.Service
end