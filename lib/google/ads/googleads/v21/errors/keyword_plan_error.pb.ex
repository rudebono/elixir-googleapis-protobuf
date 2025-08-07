defmodule Google.Ads.Googleads.V21.Errors.KeywordPlanErrorEnum.KeywordPlanError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BID_MULTIPLIER_OUT_OF_RANGE, 2
  field :BID_TOO_HIGH, 3
  field :BID_TOO_LOW, 4
  field :BID_TOO_MANY_FRACTIONAL_DIGITS, 5
  field :DAILY_BUDGET_TOO_LOW, 6
  field :DAILY_BUDGET_TOO_MANY_FRACTIONAL_DIGITS, 7
  field :INVALID_VALUE, 8
  field :KEYWORD_PLAN_HAS_NO_KEYWORDS, 9
  field :KEYWORD_PLAN_NOT_ENABLED, 10
  field :KEYWORD_PLAN_NOT_FOUND, 11
  field :MISSING_BID, 13
  field :MISSING_FORECAST_PERIOD, 14
  field :INVALID_FORECAST_DATE_RANGE, 15
  field :INVALID_NAME, 16
end

defmodule Google.Ads.Googleads.V21.Errors.KeywordPlanErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
