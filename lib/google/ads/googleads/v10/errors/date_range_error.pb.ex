defmodule Google.Ads.Googleads.V10.Errors.DateRangeErrorEnum.DateRangeError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_DATE, 2
  field :START_DATE_AFTER_END_DATE, 3
  field :CANNOT_SET_DATE_TO_PAST, 4
  field :AFTER_MAXIMUM_ALLOWABLE_DATE, 5
  field :CANNOT_MODIFY_START_DATE_IF_ALREADY_STARTED, 6
end
defmodule Google.Ads.Googleads.V10.Errors.DateRangeErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
