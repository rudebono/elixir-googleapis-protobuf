defmodule Google.Ads.Googleads.V9.Services.GetKeywordViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.KeywordViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.KeywordViewService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetKeywordView,
      Google.Ads.Googleads.V9.Services.GetKeywordViewRequest,
      Google.Ads.Googleads.V9.Resources.KeywordView
end

defmodule Google.Ads.Googleads.V9.Services.KeywordViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.KeywordViewService.Service
end