defmodule Google.Ads.Admanager.V1.WebProperty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :web_property_code, 2, type: :string, json_name: "webPropertyCode", deprecated: false

  field :product_type, 3,
    type: Google.Ads.Admanager.V1.ExchangeSyndicationProductEnum.ExchangeSyndicationProduct,
    json_name: "productType",
    enum: true,
    deprecated: false

  field :web_property_id, 4, type: :int64, json_name: "webPropertyId", deprecated: false
end
