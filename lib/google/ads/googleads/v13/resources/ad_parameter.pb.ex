defmodule Google.Ads.Googleads.V13.Resources.AdParameter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_criterion, 5,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupCriterion",
    deprecated: false

  field :parameter_index, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "parameterIndex",
    deprecated: false

  field :insertion_text, 7, proto3_optional: true, type: :string, json_name: "insertionText"
end