defmodule Google.Ads.Googleads.V5.Enums.GeoTargetingRestrictionEnum.GeoTargetingRestriction do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :LOCATION_OF_PRESENCE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :LOCATION_OF_PRESENCE, 2
end

defmodule Google.Ads.Googleads.V5.Enums.GeoTargetingRestrictionEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
