defmodule Google.Ads.Googleads.V5.Services.GetAdGroupFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.MutateAdGroupFeedsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V5.Services.AdGroupFeedOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V5.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.AdGroupFeedOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V5.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V5.Services.AdGroupFeedOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V5.Resources.AdGroupFeed, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V5.Resources.AdGroupFeed, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V5.Services.MutateAdGroupFeedsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V5.Services.MutateAdGroupFeedResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.MutateAdGroupFeedResult
end

defmodule Google.Ads.Googleads.V5.Services.MutateAdGroupFeedResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_feed: Google.Ads.Googleads.V5.Resources.AdGroupFeed.t() | nil
        }

  defstruct [:resource_name, :ad_group_feed]

  field :resource_name, 1, type: :string
  field :ad_group_feed, 2, type: Google.Ads.Googleads.V5.Resources.AdGroupFeed
end

defmodule Google.Ads.Googleads.V5.Services.AdGroupFeedService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.AdGroupFeedService"

  rpc :GetAdGroupFeed,
      Google.Ads.Googleads.V5.Services.GetAdGroupFeedRequest,
      Google.Ads.Googleads.V5.Resources.AdGroupFeed

  rpc :MutateAdGroupFeeds,
      Google.Ads.Googleads.V5.Services.MutateAdGroupFeedsRequest,
      Google.Ads.Googleads.V5.Services.MutateAdGroupFeedsResponse
end

defmodule Google.Ads.Googleads.V5.Services.AdGroupFeedService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.AdGroupFeedService.Service
end
