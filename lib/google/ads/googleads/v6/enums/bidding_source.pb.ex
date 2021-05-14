defmodule Google.Ads.Googleads.V6.Enums.BiddingSourceEnum.BiddingSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CAMPAIGN_BIDDING_STRATEGY
          | :AD_GROUP
          | :AD_GROUP_CRITERION

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :CAMPAIGN_BIDDING_STRATEGY, 5

  field :AD_GROUP, 6

  field :AD_GROUP_CRITERION, 7
end

defmodule Google.Ads.Googleads.V6.Enums.BiddingSourceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
