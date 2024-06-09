defmodule Google.Ads.Googleads.V17.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NOT_ENOUGH_CONVERSIONS, 2
  field :CONVERSION_LAG_TOO_HIGH, 3
  field :HAS_CAMPAIGN_WITH_SHARED_BUDGET, 4
  field :HAS_UPLOAD_CLICKS_CONVERSION, 5
  field :AVERAGE_DAILY_SPEND_TOO_HIGH, 6
  field :ANALYSIS_NOT_COMPLETE, 7
  field :OTHER, 8
end

defmodule Google.Ads.Googleads.V17.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end