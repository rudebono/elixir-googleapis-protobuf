defmodule Google.Ads.Admanager.V1.Network do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :network_code, 3, type: :string, json_name: "networkCode", deprecated: false
  field :property_code, 4, type: :string, json_name: "propertyCode", deprecated: false
  field :time_zone, 5, type: :string, json_name: "timeZone", deprecated: false
  field :currency_code, 6, type: :string, json_name: "currencyCode", deprecated: false

  field :secondary_currency_codes, 7,
    repeated: true,
    type: :string,
    json_name: "secondaryCurrencyCodes",
    deprecated: false

  field :effective_root_ad_unit, 8,
    type: :string,
    json_name: "effectiveRootAdUnit",
    deprecated: false

  field :test_network, 10, type: :bool, json_name: "testNetwork", deprecated: false
  field :network_id, 11, type: :int64, json_name: "networkId", deprecated: false
end
