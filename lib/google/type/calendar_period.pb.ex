defmodule Google.Type.CalendarPeriod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CALENDAR_PERIOD_UNSPECIFIED
          | :DAY
          | :WEEK
          | :FORTNIGHT
          | :MONTH
          | :QUARTER
          | :HALF
          | :YEAR

  field :CALENDAR_PERIOD_UNSPECIFIED, 0
  field :DAY, 1
  field :WEEK, 2
  field :FORTNIGHT, 3
  field :MONTH, 4
  field :QUARTER, 5
  field :HALF, 6
  field :YEAR, 7
end
