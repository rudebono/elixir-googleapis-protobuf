defmodule Google.Ads.Googleads.V7.Enums.NegativeGeoTargetTypeEnum.NegativeGeoTargetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :PRESENCE_OR_INTEREST | :PRESENCE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :PRESENCE_OR_INTEREST, 4

  field :PRESENCE, 5
end

defmodule Google.Ads.Googleads.V7.Enums.NegativeGeoTargetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
