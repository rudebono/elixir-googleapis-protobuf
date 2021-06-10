defmodule Google.Ads.Googleads.V8.Services.GetFeedItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.FeedItemOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.FeedItemOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.FeedItem, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.FeedItem, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateFeedItemResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateFeedItemResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed_item: Google.Ads.Googleads.V8.Resources.FeedItem.t() | nil
        }

  defstruct [:resource_name, :feed_item]

  field :resource_name, 1, type: :string
  field :feed_item, 2, type: Google.Ads.Googleads.V8.Resources.FeedItem
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.FeedItemService"

  rpc :GetFeedItem,
      Google.Ads.Googleads.V8.Services.GetFeedItemRequest,
      Google.Ads.Googleads.V8.Resources.FeedItem

  rpc :MutateFeedItems,
      Google.Ads.Googleads.V8.Services.MutateFeedItemsRequest,
      Google.Ads.Googleads.V8.Services.MutateFeedItemsResponse
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.FeedItemService.Service
end
