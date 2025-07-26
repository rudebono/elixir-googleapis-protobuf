defmodule Google.Ads.Googleads.V18.Enums.BiddingStrategySystemStatusEnum.BiddingStrategySystemStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENABLED, 2
  field :LEARNING_NEW, 3
  field :LEARNING_SETTING_CHANGE, 4
  field :LEARNING_BUDGET_CHANGE, 5
  field :LEARNING_COMPOSITION_CHANGE, 6
  field :LEARNING_CONVERSION_TYPE_CHANGE, 7
  field :LEARNING_CONVERSION_SETTING_CHANGE, 8
  field :LIMITED_BY_CPC_BID_CEILING, 9
  field :LIMITED_BY_CPC_BID_FLOOR, 10
  field :LIMITED_BY_DATA, 11
  field :LIMITED_BY_BUDGET, 12
  field :LIMITED_BY_LOW_PRIORITY_SPEND, 13
  field :LIMITED_BY_LOW_QUALITY, 14
  field :LIMITED_BY_INVENTORY, 15
  field :MISCONFIGURED_ZERO_ELIGIBILITY, 16
  field :MISCONFIGURED_CONVERSION_TYPES, 17
  field :MISCONFIGURED_CONVERSION_SETTINGS, 18
  field :MISCONFIGURED_SHARED_BUDGET, 19
  field :MISCONFIGURED_STRATEGY_TYPE, 20
  field :PAUSED, 21
  field :UNAVAILABLE, 22
  field :MULTIPLE_LEARNING, 23
  field :MULTIPLE_LIMITED, 24
  field :MULTIPLE_MISCONFIGURED, 25
  field :MULTIPLE, 26
end

defmodule Google.Ads.Googleads.V18.Enums.BiddingStrategySystemStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
