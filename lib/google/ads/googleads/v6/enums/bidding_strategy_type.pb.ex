defmodule Google.Ads.Googleads.V6.Enums.BiddingStrategyTypeEnum.BiddingStrategyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :COMMISSION
          | :ENHANCED_CPC
          | :MANUAL_CPC
          | :MANUAL_CPM
          | :MANUAL_CPV
          | :MAXIMIZE_CONVERSIONS
          | :MAXIMIZE_CONVERSION_VALUE
          | :PAGE_ONE_PROMOTED
          | :PERCENT_CPC
          | :TARGET_CPA
          | :TARGET_CPM
          | :TARGET_IMPRESSION_SHARE
          | :TARGET_OUTRANK_SHARE
          | :TARGET_ROAS
          | :TARGET_SPEND

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :COMMISSION, 16

  field :ENHANCED_CPC, 2

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

defmodule Google.Ads.Googleads.V6.Enums.BiddingStrategyTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
