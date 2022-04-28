defmodule Google.Ads.Googleads.V10.Errors.ConversionGoalCampaignConfigErrorEnum.ConversionGoalCampaignConfigError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CANNOT_USE_CAMPAIGN_GOAL_FOR_SEARCH_ADS_360_MANAGED_CAMPAIGN
          | :CUSTOM_GOAL_DOES_NOT_BELONG_TO_GOOGLE_ADS_CONVERSION_CUSTOMER
          | :CAMPAIGN_CANNOT_USE_UNIFIED_GOALS

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_USE_CAMPAIGN_GOAL_FOR_SEARCH_ADS_360_MANAGED_CAMPAIGN, 2
  field :CUSTOM_GOAL_DOES_NOT_BELONG_TO_GOOGLE_ADS_CONVERSION_CUSTOMER, 3
  field :CAMPAIGN_CANNOT_USE_UNIFIED_GOALS, 4
end
defmodule Google.Ads.Googleads.V10.Errors.ConversionGoalCampaignConfigErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
