defmodule Google.Ads.Googleads.V5.Errors.BiddingStrategyErrorEnum.BiddingStrategyError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DUPLICATE_NAME
          | :CANNOT_CHANGE_BIDDING_STRATEGY_TYPE
          | :CANNOT_REMOVE_ASSOCIATED_STRATEGY
          | :BIDDING_STRATEGY_NOT_SUPPORTED
          | :INCOMPATIBLE_BIDDING_STRATEGY_AND_BIDDING_STRATEGY_GOAL_TYPE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :DUPLICATE_NAME, 2

  field :CANNOT_CHANGE_BIDDING_STRATEGY_TYPE, 3

  field :CANNOT_REMOVE_ASSOCIATED_STRATEGY, 4

  field :BIDDING_STRATEGY_NOT_SUPPORTED, 5

  field :INCOMPATIBLE_BIDDING_STRATEGY_AND_BIDDING_STRATEGY_GOAL_TYPE, 6
end

defmodule Google.Ads.Googleads.V5.Errors.BiddingStrategyErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
