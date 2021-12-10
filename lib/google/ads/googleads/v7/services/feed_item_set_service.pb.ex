defmodule Google.Ads.Googleads.V7.Services.GetFeedItemSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.MutateFeedItemSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.FeedItemSetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.FeedItemSetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V7.Services.FeedItemSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V7.Resources.FeedItemSet.t() | nil}
            | {:update, Google.Ads.Googleads.V7.Resources.FeedItemSet.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.FeedItemSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.FeedItemSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V7.Services.MutateFeedItemSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V7.Services.MutateFeedItemSetResult.t()]
        }

  defstruct results: []

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateFeedItemSetResult
end
defmodule Google.Ads.Googleads.V7.Services.MutateFeedItemSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V7.Services.FeedItemSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.FeedItemSetService"

  rpc :GetFeedItemSet,
      Google.Ads.Googleads.V7.Services.GetFeedItemSetRequest,
      Google.Ads.Googleads.V7.Resources.FeedItemSet

  rpc :MutateFeedItemSets,
      Google.Ads.Googleads.V7.Services.MutateFeedItemSetsRequest,
      Google.Ads.Googleads.V7.Services.MutateFeedItemSetsResponse
end

defmodule Google.Ads.Googleads.V7.Services.FeedItemSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.FeedItemSetService.Service
end
