defmodule Google.Ads.Googleads.V13.Resources.AdGroupCustomizer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group, 2, type: :string, json_name: "adGroup", deprecated: false

  field :customizer_attribute, 3,
    type: :string,
    json_name: "customizerAttribute",
    deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V13.Enums.CustomizerValueStatusEnum.CustomizerValueStatus,
    enum: true,
    deprecated: false

  field :value, 5, type: Google.Ads.Googleads.V13.Common.CustomizerValue, deprecated: false
end