defmodule Google.Ads.Googleads.V20.Resources.AdGroupCriterionCustomizer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_criterion, 2,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupCriterion",
    deprecated: false

  field :customizer_attribute, 3,
    type: :string,
    json_name: "customizerAttribute",
    deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V20.Enums.CustomizerValueStatusEnum.CustomizerValueStatus,
    enum: true,
    deprecated: false

  field :value, 5, type: Google.Ads.Googleads.V20.Common.CustomizerValue, deprecated: false
end
