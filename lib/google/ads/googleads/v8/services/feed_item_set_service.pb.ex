defmodule Google.Ads.Googleads.V8.Services.GetFeedItemSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.FeedItemSetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.FeedItemSetOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.FeedItemSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.FeedItemSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V8.Services.MutateFeedItemSetResult.t()]
        }

  defstruct [:results]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateFeedItemSetResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.FeedItemSetService"

  rpc :GetFeedItemSet,
      Google.Ads.Googleads.V8.Services.GetFeedItemSetRequest,
      Google.Ads.Googleads.V8.Resources.FeedItemSet

  rpc :MutateFeedItemSets,
      Google.Ads.Googleads.V8.Services.MutateFeedItemSetsRequest,
      Google.Ads.Googleads.V8.Services.MutateFeedItemSetsResponse
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.FeedItemSetService.Service
end
