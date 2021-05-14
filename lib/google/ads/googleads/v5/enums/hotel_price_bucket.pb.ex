defmodule Google.Ads.Googleads.V5.Enums.HotelPriceBucketEnum.HotelPriceBucket do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :LOWEST_TIED | :NOT_LOWEST

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :LOWEST_TIED, 3

  field :NOT_LOWEST, 4
end

defmodule Google.Ads.Googleads.V5.Enums.HotelPriceBucketEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
