defmodule Google.Ads.Googleads.V7.Errors.ChangeEventErrorEnum.ChangeEventError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :START_DATE_TOO_OLD
          | :CHANGE_DATE_RANGE_INFINITE
          | :CHANGE_DATE_RANGE_NEGATIVE
          | :LIMIT_NOT_SPECIFIED
          | :INVALID_LIMIT_CLAUSE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :START_DATE_TOO_OLD, 2

  field :CHANGE_DATE_RANGE_INFINITE, 3

  field :CHANGE_DATE_RANGE_NEGATIVE, 4

  field :LIMIT_NOT_SPECIFIED, 5

  field :INVALID_LIMIT_CLAUSE, 6
end

defmodule Google.Ads.Googleads.V7.Errors.ChangeEventErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
