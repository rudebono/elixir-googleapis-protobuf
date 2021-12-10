defmodule Google.Ads.Googleads.V9.Services.GetBiddingStrategyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateBiddingStrategiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.BiddingStrategyOperation.t()],
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
    type: Google.Ads.Googleads.V9.Services.BiddingStrategyOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V9.Services.BiddingStrategyOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.BiddingStrategy.t() | nil}
            | {:update, Google.Ads.Googleads.V9.Resources.BiddingStrategy.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.BiddingStrategy, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.BiddingStrategy, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateBiddingStrategiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V9.Services.MutateBiddingStrategyResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateBiddingStrategyResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateBiddingStrategyResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          bidding_strategy: Google.Ads.Googleads.V9.Resources.BiddingStrategy.t() | nil
        }

  defstruct resource_name: "",
            bidding_strategy: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :bidding_strategy, 2,
    type: Google.Ads.Googleads.V9.Resources.BiddingStrategy,
    json_name: "biddingStrategy"
end
defmodule Google.Ads.Googleads.V9.Services.BiddingStrategyService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.BiddingStrategyService"

  rpc :GetBiddingStrategy,
      Google.Ads.Googleads.V9.Services.GetBiddingStrategyRequest,
      Google.Ads.Googleads.V9.Resources.BiddingStrategy

  rpc :MutateBiddingStrategies,
      Google.Ads.Googleads.V9.Services.MutateBiddingStrategiesRequest,
      Google.Ads.Googleads.V9.Services.MutateBiddingStrategiesResponse
end

defmodule Google.Ads.Googleads.V9.Services.BiddingStrategyService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.BiddingStrategyService.Service
end
