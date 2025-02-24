defmodule Google.Ads.Googleads.V18.Services.MutateFeedItemTargetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.FeedItemTargetOperation,
    deprecated: false

  field :partial_failure, 4, type: :bool, json_name: "partialFailure"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V18.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V18.Services.FeedItemTargetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V18.Resources.FeedItemTarget, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.MutateFeedItemTargetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.MutateFeedItemTargetResult
end

defmodule Google.Ads.Googleads.V18.Services.MutateFeedItemTargetResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :feed_item_target, 2,
    type: Google.Ads.Googleads.V18.Resources.FeedItemTarget,
    json_name: "feedItemTarget"
end

defmodule Google.Ads.Googleads.V18.Services.FeedItemTargetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.FeedItemTargetService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateFeedItemTargets,
      Google.Ads.Googleads.V18.Services.MutateFeedItemTargetsRequest,
      Google.Ads.Googleads.V18.Services.MutateFeedItemTargetsResponse
end

defmodule Google.Ads.Googleads.V18.Services.FeedItemTargetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.FeedItemTargetService.Service
end
