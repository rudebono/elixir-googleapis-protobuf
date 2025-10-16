defmodule Google.Ads.Googleads.V22.Resources.CustomerLifecycleGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :customer_acquisition_goal_value_settings, 3,
    type: Google.Ads.Googleads.V22.Common.LifecycleGoalValueSettings,
    json_name: "customerAcquisitionGoalValueSettings",
    deprecated: false

  field :owner_customer, 4, type: :string, json_name: "ownerCustomer", deprecated: false
end
