defmodule Google.Ads.Searchads360.V0.Resources.Visit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, proto3_optional: true, type: :int64, deprecated: false

  field :criterion_id, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "criterionId",
    deprecated: false

  field :merchant_id, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "merchantId",
    deprecated: false

  field :ad_id, 5, proto3_optional: true, type: :int64, json_name: "adId", deprecated: false

  field :click_id, 6,
    proto3_optional: true,
    type: :string,
    json_name: "clickId",
    deprecated: false

  field :visit_date_time, 7,
    proto3_optional: true,
    type: :string,
    json_name: "visitDateTime",
    deprecated: false

  field :product_id, 8,
    proto3_optional: true,
    type: :string,
    json_name: "productId",
    deprecated: false

  field :product_channel, 9,
    proto3_optional: true,
    type: Google.Ads.Searchads360.V0.Enums.ProductChannelEnum.ProductChannel,
    json_name: "productChannel",
    enum: true,
    deprecated: false

  field :product_language_code, 10,
    proto3_optional: true,
    type: :string,
    json_name: "productLanguageCode",
    deprecated: false

  field :product_store_id, 11,
    proto3_optional: true,
    type: :string,
    json_name: "productStoreId",
    deprecated: false

  field :product_country_code, 12,
    proto3_optional: true,
    type: :string,
    json_name: "productCountryCode",
    deprecated: false

  field :asset_id, 13,
    proto3_optional: true,
    type: :int64,
    json_name: "assetId",
    deprecated: false

  field :asset_field_type, 14,
    proto3_optional: true,
    type: Google.Ads.Searchads360.V0.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "assetFieldType",
    enum: true,
    deprecated: false
end