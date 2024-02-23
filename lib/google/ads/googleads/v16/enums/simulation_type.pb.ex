defmodule Google.Ads.Googleads.V16.Enums.SimulationTypeEnum.SimulationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CPC_BID, 2
  field :CPV_BID, 3
  field :TARGET_CPA, 4
  field :BID_MODIFIER, 5
  field :TARGET_ROAS, 6
  field :PERCENT_CPC_BID, 7
  field :TARGET_IMPRESSION_SHARE, 8
  field :BUDGET, 9
end

defmodule Google.Ads.Googleads.V16.Enums.SimulationTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end