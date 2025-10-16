defmodule Google.Ads.Googleads.V22.Resources.Goal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :goal_settings, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :goal_id, 2, proto3_optional: true, type: :int64, json_name: "goalId", deprecated: false

  field :goal_type, 3,
    type: Google.Ads.Googleads.V22.Enums.GoalTypeEnum.GoalType,
    json_name: "goalType",
    enum: true,
    deprecated: false

  field :owner_customer, 4,
    proto3_optional: true,
    type: :string,
    json_name: "ownerCustomer",
    deprecated: false

  field :optimization_eligibility, 6,
    type:
      Google.Ads.Googleads.V22.Enums.GoalOptimizationEligibilityEnum.GoalOptimizationEligibility,
    json_name: "optimizationEligibility",
    enum: true,
    deprecated: false

  field :retention_goal_settings, 7,
    type: Google.Ads.Googleads.V22.Common.GoalSetting.RetentionGoal,
    json_name: "retentionGoalSettings",
    oneof: 0
end
