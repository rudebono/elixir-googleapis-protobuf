defmodule Google.Ads.Googleads.V10.Enums.ValueRuleGeoLocationMatchTypeEnum.ValueRuleGeoLocationMatchType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ANY | :LOCATION_OF_PRESENCE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ANY, 2
  field :LOCATION_OF_PRESENCE, 3
end
defmodule Google.Ads.Googleads.V10.Enums.ValueRuleGeoLocationMatchTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
