defmodule Google.Ads.Googleads.V8.Services.GetBiddingSeasonalityAdjustmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateBiddingSeasonalityAdjustmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.BiddingSeasonalityAdjustmentOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.BiddingSeasonalityAdjustmentOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.BiddingSeasonalityAdjustmentOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V8.Resources.BiddingSeasonalityAdjustment.t() | nil}
            | {:update, Google.Ads.Googleads.V8.Resources.BiddingSeasonalityAdjustment.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.BiddingSeasonalityAdjustment, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.BiddingSeasonalityAdjustment, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateBiddingSeasonalityAdjustmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [
            Google.Ads.Googleads.V8.Services.MutateBiddingSeasonalityAdjustmentsResult.t()
          ]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateBiddingSeasonalityAdjustmentsResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateBiddingSeasonalityAdjustmentsResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          bidding_seasonality_adjustment:
            Google.Ads.Googleads.V8.Resources.BiddingSeasonalityAdjustment.t() | nil
        }

  defstruct [:resource_name, :bidding_seasonality_adjustment]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :bidding_seasonality_adjustment, 2,
    type: Google.Ads.Googleads.V8.Resources.BiddingSeasonalityAdjustment,
    json_name: "biddingSeasonalityAdjustment"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.BiddingSeasonalityAdjustmentService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.BiddingSeasonalityAdjustmentService"

  rpc :GetBiddingSeasonalityAdjustment,
      Google.Ads.Googleads.V8.Services.GetBiddingSeasonalityAdjustmentRequest,
      Google.Ads.Googleads.V8.Resources.BiddingSeasonalityAdjustment

  rpc :MutateBiddingSeasonalityAdjustments,
      Google.Ads.Googleads.V8.Services.MutateBiddingSeasonalityAdjustmentsRequest,
      Google.Ads.Googleads.V8.Services.MutateBiddingSeasonalityAdjustmentsResponse
end

defmodule Google.Ads.Googleads.V8.Services.BiddingSeasonalityAdjustmentService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.BiddingSeasonalityAdjustmentService.Service
end
