defmodule Google.Ads.Googleads.V20.Errors.ConversionGoalCampaignConfigErrorEnum.ConversionGoalCampaignConfigError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_USE_CAMPAIGN_GOAL_FOR_SEARCH_ADS_360_MANAGED_CAMPAIGN, 2
  field :CUSTOM_GOAL_DOES_NOT_BELONG_TO_GOOGLE_ADS_CONVERSION_CUSTOMER, 3
  field :CAMPAIGN_CANNOT_USE_UNIFIED_GOALS, 4
  field :EMPTY_CONVERSION_GOALS, 5
  field :STORE_SALE_STORE_VISIT_CANNOT_BE_BOTH_INCLUDED, 6
  field :PERFORMANCE_MAX_CAMPAIGN_CANNOT_USE_CUSTOM_GOAL_WITH_STORE_SALES, 7
end

defmodule Google.Ads.Googleads.V20.Errors.ConversionGoalCampaignConfigErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
