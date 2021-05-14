defmodule Google.Ads.Googleads.V6.Enums.MonthOfYearEnum.MonthOfYear do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :JANUARY
          | :FEBRUARY
          | :MARCH
          | :APRIL
          | :MAY
          | :JUNE
          | :JULY
          | :AUGUST
          | :SEPTEMBER
          | :OCTOBER
          | :NOVEMBER
          | :DECEMBER

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :JANUARY, 2

  field :FEBRUARY, 3

  field :MARCH, 4

  field :APRIL, 5

  field :MAY, 6

  field :JUNE, 7

  field :JULY, 8

  field :AUGUST, 9

  field :SEPTEMBER, 10

  field :OCTOBER, 11

  field :NOVEMBER, 12

  field :DECEMBER, 13
end

defmodule Google.Ads.Googleads.V6.Enums.MonthOfYearEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
