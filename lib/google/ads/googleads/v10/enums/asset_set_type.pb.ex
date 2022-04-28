defmodule Google.Ads.Googleads.V10.Enums.AssetSetTypeEnum.AssetSetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :PAGE_FEED
          | :DYNAMIC_EDUCATION
          | :MERCHANT_CENTER_FEED
          | :DYNAMIC_REAL_ESTATE
          | :DYNAMIC_CUSTOM
          | :DYNAMIC_HOTELS_AND_RENTALS
          | :DYNAMIC_FLIGHTS
          | :DYNAMIC_TRAVEL
          | :DYNAMIC_LOCAL
          | :DYNAMIC_JOBS

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PAGE_FEED, 2
  field :DYNAMIC_EDUCATION, 3
  field :MERCHANT_CENTER_FEED, 4
  field :DYNAMIC_REAL_ESTATE, 5
  field :DYNAMIC_CUSTOM, 6
  field :DYNAMIC_HOTELS_AND_RENTALS, 7
  field :DYNAMIC_FLIGHTS, 8
  field :DYNAMIC_TRAVEL, 9
  field :DYNAMIC_LOCAL, 10
  field :DYNAMIC_JOBS, 11
end
defmodule Google.Ads.Googleads.V10.Enums.AssetSetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
