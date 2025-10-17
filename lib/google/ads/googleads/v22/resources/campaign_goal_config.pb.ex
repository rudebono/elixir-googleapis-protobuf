defmodule Google.Ads.Googleads.V22.Resources.CampaignGoalConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :campaign_goal_config_settings, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: :string, deprecated: false
  field :goal, 3, type: :string, deprecated: false

  field :goal_type, 4,
    type: Google.Ads.Googleads.V22.Enums.GoalTypeEnum.GoalType,
    json_name: "goalType",
    enum: true,
    deprecated: false

  field :campaign_retention_settings, 5,
    type: Google.Ads.Googleads.V22.Common.CampaignGoalSettings.CampaignRetentionGoalSettings,
    json_name: "campaignRetentionSettings",
    oneof: 0
end
