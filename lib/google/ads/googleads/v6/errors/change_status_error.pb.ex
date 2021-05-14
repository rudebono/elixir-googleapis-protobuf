defmodule Google.Ads.Googleads.V6.Errors.ChangeStatusErrorEnum.ChangeStatusError do
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

  field :START_DATE_TOO_OLD, 3

  field :CHANGE_DATE_RANGE_INFINITE, 4

  field :CHANGE_DATE_RANGE_NEGATIVE, 5

  field :LIMIT_NOT_SPECIFIED, 6

  field :INVALID_LIMIT_CLAUSE, 7
end

defmodule Google.Ads.Googleads.V6.Errors.ChangeStatusErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
