defmodule Google.Ads.Googleads.V22.Common.CustomerLifecycleOptimizationValueSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :additional_value, 1, proto3_optional: true, type: :double, json_name: "additionalValue"

  field :additional_high_lifetime_value, 2,
    proto3_optional: true,
    type: :double,
    json_name: "additionalHighLifetimeValue"
end
