defmodule Google.Ads.Googleads.V19.Resources.AdGroupCriterionLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_criterion, 4,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupCriterion",
    deprecated: false

  field :label, 5, proto3_optional: true, type: :string, deprecated: false
end
