defmodule Google.Ads.Googleads.V14.Errors.BiddingErrorEnum.BiddingError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BIDDING_STRATEGY_TRANSITION_NOT_ALLOWED, 2
  field :CANNOT_ATTACH_BIDDING_STRATEGY_TO_CAMPAIGN, 7
  field :INVALID_ANONYMOUS_BIDDING_STRATEGY_TYPE, 10
  field :INVALID_BIDDING_STRATEGY_TYPE, 14
  field :INVALID_BID, 17
  field :BIDDING_STRATEGY_NOT_AVAILABLE_FOR_ACCOUNT_TYPE, 18
  field :CANNOT_CREATE_CAMPAIGN_WITH_BIDDING_STRATEGY, 21
  field :CANNOT_TARGET_CONTENT_NETWORK_ONLY_WITH_CAMPAIGN_LEVEL_POP_BIDDING_STRATEGY, 23
  field :BIDDING_STRATEGY_NOT_SUPPORTED_WITH_AD_SCHEDULE, 24
  field :PAY_PER_CONVERSION_NOT_AVAILABLE_FOR_CUSTOMER, 25
  field :PAY_PER_CONVERSION_NOT_ALLOWED_WITH_TARGET_CPA, 26
  field :BIDDING_STRATEGY_NOT_ALLOWED_FOR_SEARCH_ONLY_CAMPAIGNS, 27
  field :BIDDING_STRATEGY_NOT_SUPPORTED_IN_DRAFTS_OR_EXPERIMENTS, 28
  field :BIDDING_STRATEGY_TYPE_DOES_NOT_SUPPORT_PRODUCT_TYPE_ADGROUP_CRITERION, 29
  field :BID_TOO_SMALL, 30
  field :BID_TOO_BIG, 31
  field :BID_TOO_MANY_FRACTIONAL_DIGITS, 32
  field :INVALID_DOMAIN_NAME, 33
  field :NOT_COMPATIBLE_WITH_PAYMENT_MODE, 34
  field :BIDDING_STRATEGY_TYPE_INCOMPATIBLE_WITH_SHARED_BUDGET, 37
  field :BIDDING_STRATEGY_AND_BUDGET_MUST_BE_ALIGNED, 38
  field :BIDDING_STRATEGY_AND_BUDGET_MUST_BE_ATTACHED_TO_THE_SAME_CAMPAIGNS_TO_ALIGN, 39
  field :BIDDING_STRATEGY_AND_BUDGET_MUST_BE_REMOVED_TOGETHER, 40
  field :CPC_BID_FLOOR_MICROS_GREATER_THAN_CPC_BID_CEILING_MICROS, 41
end

defmodule Google.Ads.Googleads.V14.Errors.BiddingErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end