defmodule Google.Ads.Googleads.V9.Services.GetFeedPlaceholderViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.FeedPlaceholderViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.FeedPlaceholderViewService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetFeedPlaceholderView,
      Google.Ads.Googleads.V9.Services.GetFeedPlaceholderViewRequest,
      Google.Ads.Googleads.V9.Resources.FeedPlaceholderView
end

defmodule Google.Ads.Googleads.V9.Services.FeedPlaceholderViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.FeedPlaceholderViewService.Service
end