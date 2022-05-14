defmodule Google.Ads.Googleads.V8.Errors.ConversionAdjustmentUploadErrorEnum.ConversionAdjustmentUploadError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  field :CUSTOMER_NOT_ACCEPTED_CUSTOMER_DATA_TERMS, 15
  field :CONVERSION_ACTION_NOT_ELIGIBLE_FOR_ENHANCEMENT, 16
  field :INVALID_USER_IDENTIFIER, 17
  field :UNSUPPORTED_USER_IDENTIFIER, 18
  field :INVALID_USER_IDENTIFIER_SOURCE, 19
end
defmodule Google.Ads.Googleads.V8.Errors.ConversionAdjustmentUploadErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
