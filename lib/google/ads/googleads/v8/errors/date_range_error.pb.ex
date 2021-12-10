defmodule Google.Ads.Googleads.V8.Errors.DateRangeErrorEnum.DateRangeError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INVALID_DATE
          | :START_DATE_AFTER_END_DATE
          | :CANNOT_SET_DATE_TO_PAST
          | :AFTER_MAXIMUM_ALLOWABLE_DATE
          | :CANNOT_MODIFY_START_DATE_IF_ALREADY_STARTED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_DATE, 2
  field :START_DATE_AFTER_END_DATE, 3
  field :CANNOT_SET_DATE_TO_PAST, 4
  field :AFTER_MAXIMUM_ALLOWABLE_DATE, 5
  field :CANNOT_MODIFY_START_DATE_IF_ALREADY_STARTED, 6
end
defmodule Google.Ads.Googleads.V8.Errors.DateRangeErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
