defmodule Google.Ads.Googleads.V7.Errors.ConversionAdjustmentUploadErrorEnum.ConversionAdjustmentUploadError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :TOO_RECENT_CONVERSION_ACTION
          | :INVALID_CONVERSION_ACTION
          | :CONVERSION_ALREADY_RETRACTED
          | :CONVERSION_NOT_FOUND
          | :CONVERSION_EXPIRED
          | :ADJUSTMENT_PRECEDES_CONVERSION
          | :MORE_RECENT_RESTATEMENT_FOUND
          | :TOO_RECENT_CONVERSION
          | :CANNOT_RESTATE_CONVERSION_ACTION_THAT_ALWAYS_USES_DEFAULT_CONVERSION_VALUE
          | :TOO_MANY_ADJUSTMENTS_IN_REQUEST
          | :TOO_MANY_ADJUSTMENTS

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :TOO_RECENT_CONVERSION_ACTION, 2
  field :INVALID_CONVERSION_ACTION, 3
  field :CONVERSION_ALREADY_RETRACTED, 4
  field :CONVERSION_NOT_FOUND, 5
  field :CONVERSION_EXPIRED, 6
  field :ADJUSTMENT_PRECEDES_CONVERSION, 7
  field :MORE_RECENT_RESTATEMENT_FOUND, 8
  field :TOO_RECENT_CONVERSION, 9
  field :CANNOT_RESTATE_CONVERSION_ACTION_THAT_ALWAYS_USES_DEFAULT_CONVERSION_VALUE, 10
  field :TOO_MANY_ADJUSTMENTS_IN_REQUEST, 11
  field :TOO_MANY_ADJUSTMENTS, 12
end
defmodule Google.Ads.Googleads.V7.Errors.ConversionAdjustmentUploadErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
