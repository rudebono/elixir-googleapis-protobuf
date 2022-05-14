defmodule Google.Ads.Googleads.V8.Services.GetTopicViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.TopicViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.TopicViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetTopicView,
      Google.Ads.Googleads.V8.Services.GetTopicViewRequest,
      Google.Ads.Googleads.V8.Resources.TopicView
end

defmodule Google.Ads.Googleads.V8.Services.TopicViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.TopicViewService.Service
end
