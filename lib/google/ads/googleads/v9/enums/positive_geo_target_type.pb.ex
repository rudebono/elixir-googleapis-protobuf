defmodule Google.Ads.Googleads.V9.Enums.PositiveGeoTargetTypeEnum.PositiveGeoTargetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :UNSPECIFIED | :UNKNOWN | :PRESENCE_OR_INTEREST | :SEARCH_INTEREST | :PRESENCE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PRESENCE_OR_INTEREST, 5
  field :SEARCH_INTEREST, 6
  field :PRESENCE, 7
end
defmodule Google.Ads.Googleads.V9.Enums.PositiveGeoTargetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
