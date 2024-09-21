defmodule Google.Ads.Searchads360.V0.Enums.BiddingStrategyTypeEnum.BiddingStrategyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :COMMISSION, 16
  field :ENHANCED_CPC, 2
  field :INVALID, 17
  field :MANUAL_CPA, 18
  field :MANUAL_CPC, 3
  field :MANUAL_CPM, 4
  field :MANUAL_CPV, 13
  field :MAXIMIZE_CONVERSIONS, 10
  field :MAXIMIZE_CONVERSION_VALUE, 11
  field :PAGE_ONE_PROMOTED, 5
  field :PERCENT_CPC, 12
  field :TARGET_CPA, 6
  field :TARGET_CPM, 14
  field :TARGET_IMPRESSION_SHARE, 15
  field :TARGET_OUTRANK_SHARE, 7
  field :TARGET_ROAS, 8
  field :TARGET_SPEND, 9
end

defmodule Google.Ads.Searchads360.V0.Enums.BiddingStrategyTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end