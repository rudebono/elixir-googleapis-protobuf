defmodule Google.Ads.Googleads.V11.Errors.ConversionGoalCampaignConfigErrorEnum.ConversionGoalCampaignConfigError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_USE_CAMPAIGN_GOAL_FOR_SEARCH_ADS_360_MANAGED_CAMPAIGN, 2
  field :CUSTOM_GOAL_DOES_NOT_BELONG_TO_GOOGLE_ADS_CONVERSION_CUSTOMER, 3
  field :CAMPAIGN_CANNOT_USE_UNIFIED_GOALS, 4
end

defmodule Google.Ads.Googleads.V11.Errors.ConversionGoalCampaignConfigErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end