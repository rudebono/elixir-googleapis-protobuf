defmodule Google.Ads.Googleads.V9.Services.GetFeedMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateFeedMappingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.FeedMappingOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.FeedMappingOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V9.Services.FeedMappingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.FeedMapping.t() | nil}
            | {:remove, String.t()}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V9.Resources.FeedMapping, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateFeedMappingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V9.Services.MutateFeedMappingResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateFeedMappingResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateFeedMappingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed_mapping: Google.Ads.Googleads.V9.Resources.FeedMapping.t() | nil
        }

  defstruct resource_name: "",
            feed_mapping: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :feed_mapping, 2,
    type: Google.Ads.Googleads.V9.Resources.FeedMapping,
    json_name: "feedMapping"
end
defmodule Google.Ads.Googleads.V9.Services.FeedMappingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.FeedMappingService"

  rpc :GetFeedMapping,
      Google.Ads.Googleads.V9.Services.GetFeedMappingRequest,
      Google.Ads.Googleads.V9.Resources.FeedMapping

  rpc :MutateFeedMappings,
      Google.Ads.Googleads.V9.Services.MutateFeedMappingsRequest,
      Google.Ads.Googleads.V9.Services.MutateFeedMappingsResponse
end

defmodule Google.Ads.Googleads.V9.Services.FeedMappingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.FeedMappingService.Service
end
