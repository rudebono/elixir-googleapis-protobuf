defmodule Google.Ads.Googleads.V13.Errors.DateErrorEnum.DateError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_FIELD_VALUES_IN_DATE, 2
  field :INVALID_FIELD_VALUES_IN_DATE_TIME, 3
  field :INVALID_STRING_DATE, 4
  field :INVALID_STRING_DATE_TIME_MICROS, 6
  field :INVALID_STRING_DATE_TIME_SECONDS, 11
  field :INVALID_STRING_DATE_TIME_SECONDS_WITH_OFFSET, 12
  field :EARLIER_THAN_MINIMUM_DATE, 7
  field :LATER_THAN_MAXIMUM_DATE, 8
  field :DATE_RANGE_MINIMUM_DATE_LATER_THAN_MAXIMUM_DATE, 9
  field :DATE_RANGE_MINIMUM_AND_MAXIMUM_DATES_BOTH_NULL, 10
end

defmodule Google.Ads.Googleads.V13.Errors.DateErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end