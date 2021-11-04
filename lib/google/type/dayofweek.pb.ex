defmodule Google.Type.DayOfWeek do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DAY_OF_WEEK_UNSPECIFIED
          | :MONDAY
          | :TUESDAY
          | :WEDNESDAY
          | :THURSDAY
          | :FRIDAY
          | :SATURDAY
          | :SUNDAY

  field :DAY_OF_WEEK_UNSPECIFIED, 0
  field :MONDAY, 1
  field :TUESDAY, 2
  field :WEDNESDAY, 3
  field :THURSDAY, 4
  field :FRIDAY, 5
  field :SATURDAY, 6
  field :SUNDAY, 7
end
