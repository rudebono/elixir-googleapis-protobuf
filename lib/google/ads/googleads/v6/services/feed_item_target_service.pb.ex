defmodule Google.Ads.Googleads.V6.Services.GetFeedItemTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V6.Services.MutateFeedItemTargetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V6.Services.FeedItemTargetOperation.t()],
          response_content_type:
            Google.Ads.Googleads.V6.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :response_content_type]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V6.Services.FeedItemTargetOperation

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V6.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V6.Services.FeedItemTargetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V6.Resources.FeedItemTarget, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V6.Services.MutateFeedItemTargetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V6.Services.MutateFeedItemTargetResult.t()]
        }

  defstruct [:results]

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V6.Services.MutateFeedItemTargetResult
end

defmodule Google.Ads.Googleads.V6.Services.MutateFeedItemTargetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed_item_target: Google.Ads.Googleads.V6.Resources.FeedItemTarget.t() | nil
        }

  defstruct [:resource_name, :feed_item_target]

  field :resource_name, 1, type: :string
  field :feed_item_target, 2, type: Google.Ads.Googleads.V6.Resources.FeedItemTarget
end

defmodule Google.Ads.Googleads.V6.Services.FeedItemTargetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v6.services.FeedItemTargetService"

  rpc :GetFeedItemTarget,
      Google.Ads.Googleads.V6.Services.GetFeedItemTargetRequest,
      Google.Ads.Googleads.V6.Resources.FeedItemTarget

  rpc :MutateFeedItemTargets,
      Google.Ads.Googleads.V6.Services.MutateFeedItemTargetsRequest,
      Google.Ads.Googleads.V6.Services.MutateFeedItemTargetsResponse
end

defmodule Google.Ads.Googleads.V6.Services.FeedItemTargetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V6.Services.FeedItemTargetService.Service
end
