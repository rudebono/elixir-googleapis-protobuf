defmodule Google.Ads.Googleads.V22.Common.GoalSetting.RetentionGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value_settings, 1,
    type: Google.Ads.Googleads.V22.Common.CustomerLifecycleOptimizationValueSettings,
    json_name: "valueSettings"
end

defmodule Google.Ads.Googleads.V22.Common.GoalSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
