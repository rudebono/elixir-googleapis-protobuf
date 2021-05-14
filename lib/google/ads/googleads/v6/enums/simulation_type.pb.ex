defmodule Google.Ads.Googleads.V6.Enums.SimulationTypeEnum.SimulationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CPC_BID
          | :CPV_BID
          | :TARGET_CPA
          | :BID_MODIFIER
          | :TARGET_ROAS
          | :PERCENT_CPC_BID

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :CPC_BID, 2

  field :CPV_BID, 3

  field :TARGET_CPA, 4

  field :BID_MODIFIER, 5

  field :TARGET_ROAS, 6

  field :PERCENT_CPC_BID, 7
end

defmodule Google.Ads.Googleads.V6.Enums.SimulationTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
