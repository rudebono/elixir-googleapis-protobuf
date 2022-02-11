defmodule Google.Ads.Googleads.V10.Enums.SkAdNetworkAdEventTypeEnum.SkAdNetworkAdEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :UNAVAILABLE | :INTERACTION | :VIEW

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :UNAVAILABLE, 2
  field :INTERACTION, 3
  field :VIEW, 4
end
defmodule Google.Ads.Googleads.V10.Enums.SkAdNetworkAdEventTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
