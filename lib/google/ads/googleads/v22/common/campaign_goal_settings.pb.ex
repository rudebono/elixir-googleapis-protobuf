defmodule Google.Ads.Googleads.V22.Common.CampaignGoalSettings.CampaignRetentionGoalSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value_settings_override, 1,
    type: Google.Ads.Googleads.V22.Common.CustomerLifecycleOptimizationValueSettings,
    json_name: "valueSettingsOverride"

  field :target_option, 2,
    type:
      Google.Ads.Googleads.V22.Enums.CustomerLifecycleOptimizationModeEnum.CustomerLifecycleOptimizationMode,
    json_name: "targetOption",
    enum: true
end

defmodule Google.Ads.Googleads.V22.Common.CampaignGoalSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
