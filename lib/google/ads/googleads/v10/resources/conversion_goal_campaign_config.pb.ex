defmodule Google.Ads.Googleads.V10.Resources.ConversionGoalCampaignConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          goal_config_level:
            Google.Ads.Googleads.V10.Enums.GoalConfigLevelEnum.GoalConfigLevel.t(),
          custom_conversion_goal: String.t()
        }

  defstruct resource_name: "",
            campaign: "",
            goal_config_level: :UNSPECIFIED,
            custom_conversion_goal: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: :string, deprecated: false

  field :goal_config_level, 3,
    type: Google.Ads.Googleads.V10.Enums.GoalConfigLevelEnum.GoalConfigLevel,
    json_name: "goalConfigLevel",
    enum: true

  field :custom_conversion_goal, 4,
    type: :string,
    json_name: "customConversionGoal",
    deprecated: false
end
