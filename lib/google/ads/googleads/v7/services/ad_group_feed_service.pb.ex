defmodule Google.Ads.Googleads.V7.Services.GetAdGroupFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupFeedsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.AdGroupFeedOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.AdGroupFeedOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V7.Services.AdGroupFeedOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V7.Resources.AdGroupFeed.t() | nil}
            | {:update, Google.Ads.Googleads.V7.Resources.AdGroupFeed.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.AdGroupFeed, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.AdGroupFeed, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupFeedsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V7.Services.MutateAdGroupFeedResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupFeedResult
end
defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupFeedResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_feed: Google.Ads.Googleads.V7.Resources.AdGroupFeed.t() | nil
        }

  defstruct resource_name: "",
            ad_group_feed: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :ad_group_feed, 2,
    type: Google.Ads.Googleads.V7.Resources.AdGroupFeed,
    json_name: "adGroupFeed"
end
defmodule Google.Ads.Googleads.V7.Services.AdGroupFeedService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.AdGroupFeedService"

  rpc :GetAdGroupFeed,
      Google.Ads.Googleads.V7.Services.GetAdGroupFeedRequest,
      Google.Ads.Googleads.V7.Resources.AdGroupFeed

  rpc :MutateAdGroupFeeds,
      Google.Ads.Googleads.V7.Services.MutateAdGroupFeedsRequest,
      Google.Ads.Googleads.V7.Services.MutateAdGroupFeedsResponse
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupFeedService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.AdGroupFeedService.Service
end
