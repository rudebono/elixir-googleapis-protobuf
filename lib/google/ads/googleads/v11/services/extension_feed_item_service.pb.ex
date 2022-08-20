defmodule Google.Ads.Googleads.V11.Services.MutateExtensionFeedItemsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.ExtensionFeedItemOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V11.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V11.Services.ExtensionFeedItemOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V11.Resources.ExtensionFeedItem, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V11.Resources.ExtensionFeedItem, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V11.Services.MutateExtensionFeedItemsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.MutateExtensionFeedItemResult
end

defmodule Google.Ads.Googleads.V11.Services.MutateExtensionFeedItemResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :extension_feed_item, 2,
    type: Google.Ads.Googleads.V11.Resources.ExtensionFeedItem,
    json_name: "extensionFeedItem"
end

defmodule Google.Ads.Googleads.V11.Services.ExtensionFeedItemService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v11.services.ExtensionFeedItemService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :MutateExtensionFeedItems,
      Google.Ads.Googleads.V11.Services.MutateExtensionFeedItemsRequest,
      Google.Ads.Googleads.V11.Services.MutateExtensionFeedItemsResponse
end

defmodule Google.Ads.Googleads.V11.Services.ExtensionFeedItemService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.ExtensionFeedItemService.Service
end