defmodule Google.Ads.Googleads.V4.Services.UploadConversionAdjustmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          conversion_adjustments: [Google.Ads.Googleads.V4.Services.ConversionAdjustment.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :conversion_adjustments, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :conversion_adjustments, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.ConversionAdjustment

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.UploadConversionAdjustmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V4.Services.ConversionAdjustmentResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.ConversionAdjustmentResult
end

defmodule Google.Ads.Googleads.V4.Services.ConversionAdjustment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversion_identifier: {atom, any},
          conversion_action: Google.Protobuf.StringValue.t() | nil,
          adjustment_date_time: Google.Protobuf.StringValue.t() | nil,
          adjustment_type:
            Google.Ads.Googleads.V4.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType.t(),
          restatement_value: Google.Ads.Googleads.V4.Services.RestatementValue.t() | nil
        }

  defstruct [
    :conversion_identifier,
    :conversion_action,
    :adjustment_date_time,
    :adjustment_type,
    :restatement_value
  ]

  oneof :conversion_identifier, 0
  field :conversion_action, 3, type: Google.Protobuf.StringValue
  field :adjustment_date_time, 4, type: Google.Protobuf.StringValue

  field :adjustment_type, 5,
    type: Google.Ads.Googleads.V4.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType,
    enum: true

  field :restatement_value, 6, type: Google.Ads.Googleads.V4.Services.RestatementValue

  field :gclid_date_time_pair, 1,
    type: Google.Ads.Googleads.V4.Services.GclidDateTimePair,
    oneof: 0

  field :order_id, 2, type: Google.Protobuf.StringValue, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.RestatementValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          adjusted_value: Google.Protobuf.DoubleValue.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:adjusted_value, :currency_code]

  field :adjusted_value, 1, type: Google.Protobuf.DoubleValue
  field :currency_code, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.GclidDateTimePair do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gclid: Google.Protobuf.StringValue.t() | nil,
          conversion_date_time: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:gclid, :conversion_date_time]

  field :gclid, 1, type: Google.Protobuf.StringValue
  field :conversion_date_time, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.ConversionAdjustmentResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversion_identifier: {atom, any},
          conversion_action: Google.Protobuf.StringValue.t() | nil,
          adjustment_date_time: Google.Protobuf.StringValue.t() | nil,
          adjustment_type:
            Google.Ads.Googleads.V4.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType.t()
        }

  defstruct [:conversion_identifier, :conversion_action, :adjustment_date_time, :adjustment_type]

  oneof :conversion_identifier, 0
  field :conversion_action, 3, type: Google.Protobuf.StringValue
  field :adjustment_date_time, 4, type: Google.Protobuf.StringValue

  field :adjustment_type, 5,
    type: Google.Ads.Googleads.V4.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType,
    enum: true

  field :gclid_date_time_pair, 1,
    type: Google.Ads.Googleads.V4.Services.GclidDateTimePair,
    oneof: 0

  field :order_id, 2, type: Google.Protobuf.StringValue, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.ConversionAdjustmentUploadService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.ConversionAdjustmentUploadService"

  rpc :UploadConversionAdjustments,
      Google.Ads.Googleads.V4.Services.UploadConversionAdjustmentsRequest,
      Google.Ads.Googleads.V4.Services.UploadConversionAdjustmentsResponse
end

defmodule Google.Ads.Googleads.V4.Services.ConversionAdjustmentUploadService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V4.Services.ConversionAdjustmentUploadService.Service
end
