defmodule Google.Ads.Googleads.V9.Enums.PriceExtensionTypeEnum.PriceExtensionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :BRANDS
          | :EVENTS
          | :LOCATIONS
          | :NEIGHBORHOODS
          | :PRODUCT_CATEGORIES
          | :PRODUCT_TIERS
          | :SERVICES
          | :SERVICE_CATEGORIES
          | :SERVICE_TIERS

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BRANDS, 2
  field :EVENTS, 3
  field :LOCATIONS, 4
  field :NEIGHBORHOODS, 5
  field :PRODUCT_CATEGORIES, 6
  field :PRODUCT_TIERS, 7
  field :SERVICES, 8
  field :SERVICE_CATEGORIES, 9
  field :SERVICE_TIERS, 10
end
defmodule Google.Ads.Googleads.V9.Enums.PriceExtensionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
