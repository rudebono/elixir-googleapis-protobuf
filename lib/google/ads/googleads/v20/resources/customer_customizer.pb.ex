defmodule Google.Ads.Googleads.V20.Resources.CustomerCustomizer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :customizer_attribute, 2,
    type: :string,
    json_name: "customizerAttribute",
    deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V20.Enums.CustomizerValueStatusEnum.CustomizerValueStatus,
    enum: true,
    deprecated: false

  field :value, 4, type: Google.Ads.Googleads.V20.Common.CustomizerValue, deprecated: false
end
