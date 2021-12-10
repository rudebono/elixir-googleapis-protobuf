defmodule Google.Ads.Googleads.V9.Enums.DistanceBucketEnum.DistanceBucket do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :WITHIN_700M
          | :WITHIN_1KM
          | :WITHIN_5KM
          | :WITHIN_10KM
          | :WITHIN_15KM
          | :WITHIN_20KM
          | :WITHIN_25KM
          | :WITHIN_30KM
          | :WITHIN_35KM
          | :WITHIN_40KM
          | :WITHIN_45KM
          | :WITHIN_50KM
          | :WITHIN_55KM
          | :WITHIN_60KM
          | :WITHIN_65KM
          | :BEYOND_65KM
          | :WITHIN_0_7MILES
          | :WITHIN_1MILE
          | :WITHIN_5MILES
          | :WITHIN_10MILES
          | :WITHIN_15MILES
          | :WITHIN_20MILES
          | :WITHIN_25MILES
          | :WITHIN_30MILES
          | :WITHIN_35MILES
          | :WITHIN_40MILES
          | :BEYOND_40MILES

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :WITHIN_700M, 2
  field :WITHIN_1KM, 3
  field :WITHIN_5KM, 4
  field :WITHIN_10KM, 5
  field :WITHIN_15KM, 6
  field :WITHIN_20KM, 7
  field :WITHIN_25KM, 8
  field :WITHIN_30KM, 9
  field :WITHIN_35KM, 10
  field :WITHIN_40KM, 11
  field :WITHIN_45KM, 12
  field :WITHIN_50KM, 13
  field :WITHIN_55KM, 14
  field :WITHIN_60KM, 15
  field :WITHIN_65KM, 16
  field :BEYOND_65KM, 17
  field :WITHIN_0_7MILES, 18
  field :WITHIN_1MILE, 19
  field :WITHIN_5MILES, 20
  field :WITHIN_10MILES, 21
  field :WITHIN_15MILES, 22
  field :WITHIN_20MILES, 23
  field :WITHIN_25MILES, 24
  field :WITHIN_30MILES, 25
  field :WITHIN_35MILES, 26
  field :WITHIN_40MILES, 27
  field :BEYOND_40MILES, 28
end
defmodule Google.Ads.Googleads.V9.Enums.DistanceBucketEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
