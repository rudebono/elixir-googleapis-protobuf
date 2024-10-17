defmodule Google.Ads.Googleads.V18.Resources.CampaignLifecycleGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: :string, deprecated: false

  field :customer_acquisition_goal_settings, 3,
    type: Google.Ads.Googleads.V18.Resources.CustomerAcquisitionGoalSettings,
    json_name: "customerAcquisitionGoalSettings",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.CustomerAcquisitionGoalSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :optimization_mode, 1,
    type:
      Google.Ads.Googleads.V18.Enums.CustomerAcquisitionOptimizationModeEnum.CustomerAcquisitionOptimizationMode,
    json_name: "optimizationMode",
    enum: true,
    deprecated: false

  field :value_settings, 2,
    type: Google.Ads.Googleads.V18.Common.LifecycleGoalValueSettings,
    json_name: "valueSettings",
    deprecated: false
end