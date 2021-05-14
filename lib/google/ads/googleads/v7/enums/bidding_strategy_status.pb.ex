defmodule Google.Ads.Googleads.V7.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ENABLED | :REMOVED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ENABLED, 2

  field :REMOVED, 4
end

defmodule Google.Ads.Googleads.V7.Enums.BiddingStrategyStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
