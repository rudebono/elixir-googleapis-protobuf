defmodule Google.Ads.Googleads.V18.Common.LifecycleGoalValueSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :double

  field :high_lifetime_value, 2,
    proto3_optional: true,
    type: :double,
    json_name: "highLifetimeValue"
end
