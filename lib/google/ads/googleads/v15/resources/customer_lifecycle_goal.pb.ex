defmodule Google.Ads.Googleads.V15.Resources.CustomerLifecycleGoal.LifecycleGoalCustomerDefinitionSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :existing_user_lists, 1,
    repeated: true,
    type: :string,
    json_name: "existingUserLists",
    deprecated: false

  field :high_lifetime_value_user_lists, 2,
    repeated: true,
    type: :string,
    json_name: "highLifetimeValueUserLists",
    deprecated: false
end

defmodule Google.Ads.Googleads.V15.Resources.CustomerLifecycleGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :lifecycle_goal_customer_definition_settings, 2,
    type:
      Google.Ads.Googleads.V15.Resources.CustomerLifecycleGoal.LifecycleGoalCustomerDefinitionSettings,
    json_name: "lifecycleGoalCustomerDefinitionSettings",
    deprecated: false

  field :customer_acquisition_goal_value_settings, 3,
    type: Google.Ads.Googleads.V15.Common.LifecycleGoalValueSettings,
    json_name: "customerAcquisitionGoalValueSettings",
    deprecated: false
end