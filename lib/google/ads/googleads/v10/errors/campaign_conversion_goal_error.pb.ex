defmodule Google.Ads.Googleads.V10.Errors.CampaignConversionGoalErrorEnum.CampaignConversionGoalError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CANNOT_USE_CAMPAIGN_GOAL_FOR_SEARCH_ADS_360_MANAGED_CAMPAIGN

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_USE_CAMPAIGN_GOAL_FOR_SEARCH_ADS_360_MANAGED_CAMPAIGN, 2
end
defmodule Google.Ads.Googleads.V10.Errors.CampaignConversionGoalErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
