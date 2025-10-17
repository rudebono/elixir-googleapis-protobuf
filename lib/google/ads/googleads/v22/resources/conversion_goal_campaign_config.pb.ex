defmodule Google.Ads.Googleads.V22.Resources.ConversionGoalCampaignConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: :string, deprecated: false

  field :goal_config_level, 3,
    type: Google.Ads.Googleads.V22.Enums.GoalConfigLevelEnum.GoalConfigLevel,
    json_name: "goalConfigLevel",
    enum: true

  field :custom_conversion_goal, 4,
    type: :string,
    json_name: "customConversionGoal",
    deprecated: false
end
