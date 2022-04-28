defmodule Google.Ads.Googleads.V10.Enums.SkAdNetworkAttributionCreditEnum.SkAdNetworkAttributionCredit do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :UNAVAILABLE | :WON | :CONTRIBUTED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :UNAVAILABLE, 2
  field :WON, 3
  field :CONTRIBUTED, 4
end
defmodule Google.Ads.Googleads.V10.Enums.SkAdNetworkAttributionCreditEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
