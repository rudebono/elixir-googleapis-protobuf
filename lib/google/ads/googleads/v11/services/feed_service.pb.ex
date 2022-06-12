defmodule Google.Ads.Googleads.V11.Services.MutateFeedsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.FeedOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V11.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Services.FeedOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V11.Resources.Feed, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V11.Resources.Feed, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.MutateFeedsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V11.Services.MutateFeedResult
end
defmodule Google.Ads.Googleads.V11.Services.MutateFeedResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :feed, 2, type: Google.Ads.Googleads.V11.Resources.Feed
end
defmodule Google.Ads.Googleads.V11.Services.FeedService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v11.services.FeedService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :MutateFeeds,
      Google.Ads.Googleads.V11.Services.MutateFeedsRequest,
      Google.Ads.Googleads.V11.Services.MutateFeedsResponse
end

defmodule Google.Ads.Googleads.V11.Services.FeedService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.FeedService.Service
end
