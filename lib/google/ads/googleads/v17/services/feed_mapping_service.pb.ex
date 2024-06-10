defmodule Google.Ads.Googleads.V17.Services.MutateFeedMappingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.FeedMappingOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V17.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V17.Services.FeedMappingOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V17.Resources.FeedMapping, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.MutateFeedMappingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.MutateFeedMappingResult
end

defmodule Google.Ads.Googleads.V17.Services.MutateFeedMappingResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :feed_mapping, 2,
    type: Google.Ads.Googleads.V17.Resources.FeedMapping,
    json_name: "feedMapping"
end

defmodule Google.Ads.Googleads.V17.Services.FeedMappingService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.FeedMappingService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateFeedMappings,
      Google.Ads.Googleads.V17.Services.MutateFeedMappingsRequest,
      Google.Ads.Googleads.V17.Services.MutateFeedMappingsResponse
end

defmodule Google.Ads.Googleads.V17.Services.FeedMappingService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V17.Services.FeedMappingService.Service
end