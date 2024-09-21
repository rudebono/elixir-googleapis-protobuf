defmodule Google.Ads.Googleads.V17.Errors.BiddingStrategyErrorEnum.BiddingStrategyError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_NAME, 2
  field :CANNOT_CHANGE_BIDDING_STRATEGY_TYPE, 3
  field :CANNOT_REMOVE_ASSOCIATED_STRATEGY, 4
  field :BIDDING_STRATEGY_NOT_SUPPORTED, 5
  field :INCOMPATIBLE_BIDDING_STRATEGY_AND_BIDDING_STRATEGY_GOAL_TYPE, 6
end

defmodule Google.Ads.Googleads.V17.Errors.BiddingStrategyErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end