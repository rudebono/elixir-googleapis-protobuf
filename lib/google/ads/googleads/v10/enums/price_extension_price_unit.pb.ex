defmodule Google.Ads.Googleads.V10.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :PER_HOUR
          | :PER_DAY
          | :PER_WEEK
          | :PER_MONTH
          | :PER_YEAR
          | :PER_NIGHT

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PER_HOUR, 2
  field :PER_DAY, 3
  field :PER_WEEK, 4
  field :PER_MONTH, 5
  field :PER_YEAR, 6
  field :PER_NIGHT, 7
end
defmodule Google.Ads.Googleads.V10.Enums.PriceExtensionPriceUnitEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
