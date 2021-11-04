defmodule Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :MONDAY
          | :TUESDAY
          | :WEDNESDAY
          | :THURSDAY
          | :FRIDAY
          | :SATURDAY
          | :SUNDAY

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MONDAY, 2
  field :TUESDAY, 3
  field :WEDNESDAY, 4
  field :THURSDAY, 5
  field :FRIDAY, 6
  field :SATURDAY, 7
  field :SUNDAY, 8
end

defmodule Google.Ads.Googleads.V8.Enums.DayOfWeekEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
