defmodule Google.Ads.Googleads.V8.Services.GetFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.FeedOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.FeedOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.FeedOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.Feed, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.Feed, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateFeedResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateFeedResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed: Google.Ads.Googleads.V8.Resources.Feed.t() | nil
        }

  defstruct [:resource_name, :feed]

  field :resource_name, 1, type: :string
  field :feed, 2, type: Google.Ads.Googleads.V8.Resources.Feed
end

defmodule Google.Ads.Googleads.V8.Services.FeedService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.FeedService"

  rpc :GetFeed,
      Google.Ads.Googleads.V8.Services.GetFeedRequest,
      Google.Ads.Googleads.V8.Resources.Feed

  rpc :MutateFeeds,
      Google.Ads.Googleads.V8.Services.MutateFeedsRequest,
      Google.Ads.Googleads.V8.Services.MutateFeedsResponse
end

defmodule Google.Ads.Googleads.V8.Services.FeedService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.FeedService.Service
end
