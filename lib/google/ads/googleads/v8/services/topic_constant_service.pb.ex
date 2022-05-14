defmodule Google.Ads.Googleads.V8.Services.GetTopicConstantRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.TopicConstantService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.TopicConstantService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetTopicConstant,
      Google.Ads.Googleads.V8.Services.GetTopicConstantRequest,
      Google.Ads.Googleads.V8.Resources.TopicConstant
end

defmodule Google.Ads.Googleads.V8.Services.TopicConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.TopicConstantService.Service
end
