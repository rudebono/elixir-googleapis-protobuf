defmodule Google.Ads.Googleads.V13.Services.MutateFeedItemSetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V13.Services.FeedItemSetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V13.Services.FeedItemSetOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V13.Resources.FeedItemSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V13.Resources.FeedItemSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.MutateFeedItemSetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V13.Services.MutateFeedItemSetResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V13.Services.MutateFeedItemSetResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.FeedItemSetService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v13.services.FeedItemSetService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :MutateFeedItemSets,
      Google.Ads.Googleads.V13.Services.MutateFeedItemSetsRequest,
      Google.Ads.Googleads.V13.Services.MutateFeedItemSetsResponse
end

defmodule Google.Ads.Googleads.V13.Services.FeedItemSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V13.Services.FeedItemSetService.Service
end