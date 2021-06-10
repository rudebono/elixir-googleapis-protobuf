defmodule Google.Ads.Googleads.V8.Enums.GeoTargetingTypeEnum.GeoTargetingType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :AREA_OF_INTEREST | :LOCATION_OF_PRESENCE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :AREA_OF_INTEREST, 2

  field :LOCATION_OF_PRESENCE, 3
end

defmodule Google.Ads.Googleads.V8.Enums.GeoTargetingTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
