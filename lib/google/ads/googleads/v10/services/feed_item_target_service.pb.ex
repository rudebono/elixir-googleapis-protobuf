defmodule Google.Ads.Googleads.V10.Services.MutateFeedItemTargetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V10.Services.FeedItemTargetOperation.t()],
          partial_failure: boolean,
          response_content_type:
            Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType.t(),
          validate_only: boolean
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            response_content_type: :UNSPECIFIED,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.FeedItemTargetOperation,
    deprecated: false

  field :partial_failure, 4, type: :bool, json_name: "partialFailure"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V10.Services.FeedItemTargetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V10.Resources.FeedItemTarget.t() | nil}
            | {:remove, String.t()}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V10.Resources.FeedItemTarget, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateFeedItemTargetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V10.Services.MutateFeedItemTargetResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateFeedItemTargetResult
end
defmodule Google.Ads.Googleads.V10.Services.MutateFeedItemTargetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed_item_target: Google.Ads.Googleads.V10.Resources.FeedItemTarget.t() | nil
        }

  defstruct resource_name: "",
            feed_item_target: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :feed_item_target, 2,
    type: Google.Ads.Googleads.V10.Resources.FeedItemTarget,
    json_name: "feedItemTarget"
end
defmodule Google.Ads.Googleads.V10.Services.FeedItemTargetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.FeedItemTargetService"

  rpc :MutateFeedItemTargets,
      Google.Ads.Googleads.V10.Services.MutateFeedItemTargetsRequest,
      Google.Ads.Googleads.V10.Services.MutateFeedItemTargetsResponse
end

defmodule Google.Ads.Googleads.V10.Services.FeedItemTargetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.FeedItemTargetService.Service
end
