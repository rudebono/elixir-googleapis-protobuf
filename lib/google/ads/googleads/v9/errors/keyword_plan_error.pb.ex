defmodule Google.Ads.Googleads.V9.Errors.KeywordPlanErrorEnum.KeywordPlanError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :BID_MULTIPLIER_OUT_OF_RANGE
          | :BID_TOO_HIGH
          | :BID_TOO_LOW
          | :BID_TOO_MANY_FRACTIONAL_DIGITS
          | :DAILY_BUDGET_TOO_LOW
          | :DAILY_BUDGET_TOO_MANY_FRACTIONAL_DIGITS
          | :INVALID_VALUE
          | :KEYWORD_PLAN_HAS_NO_KEYWORDS
          | :KEYWORD_PLAN_NOT_ENABLED
          | :KEYWORD_PLAN_NOT_FOUND
          | :MISSING_BID
          | :MISSING_FORECAST_PERIOD
          | :INVALID_FORECAST_DATE_RANGE
          | :INVALID_NAME

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
defmodule Google.Ads.Googleads.V9.Errors.KeywordPlanErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
