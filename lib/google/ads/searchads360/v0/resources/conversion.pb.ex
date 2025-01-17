defmodule Google.Ads.Searchads360.V0.Resources.Conversion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  field :visit_id, 7, proto3_optional: true, type: :int64, json_name: "visitId", deprecated: false

  field :advertiser_conversion_id, 8,
    proto3_optional: true,
    type: :string,
    json_name: "advertiserConversionId",
    deprecated: false

  field :product_id, 9,
    proto3_optional: true,
    type: :string,
    json_name: "productId",
    deprecated: false

  field :product_channel, 10,
    proto3_optional: true,
    type: Google.Ads.Searchads360.V0.Enums.ProductChannelEnum.ProductChannel,
    json_name: "productChannel",
    enum: true,
    deprecated: false

  field :product_language_code, 11,
    proto3_optional: true,
    type: :string,
    json_name: "productLanguageCode",
    deprecated: false

  field :product_store_id, 12,
    proto3_optional: true,
    type: :string,
    json_name: "productStoreId",
    deprecated: false

  field :product_country_code, 13,
    proto3_optional: true,
    type: :string,
    json_name: "productCountryCode",
    deprecated: false

  field :attribution_type, 14,
    proto3_optional: true,
    type: Google.Ads.Searchads360.V0.Enums.AttributionTypeEnum.AttributionType,
    json_name: "attributionType",
    enum: true,
    deprecated: false

  field :conversion_date_time, 15,
    proto3_optional: true,
    type: :string,
    json_name: "conversionDateTime",
    deprecated: false

  field :conversion_last_modified_date_time, 16,
    proto3_optional: true,
    type: :string,
    json_name: "conversionLastModifiedDateTime",
    deprecated: false

  field :conversion_visit_date_time, 17,
    proto3_optional: true,
    type: :string,
    json_name: "conversionVisitDateTime",
    deprecated: false

  field :conversion_quantity, 18,
    proto3_optional: true,
    type: :int64,
    json_name: "conversionQuantity",
    deprecated: false

  field :conversion_revenue_micros, 19,
    proto3_optional: true,
    type: :int64,
    json_name: "conversionRevenueMicros",
    deprecated: false

  field :floodlight_original_revenue, 20,
    proto3_optional: true,
    type: :int64,
    json_name: "floodlightOriginalRevenue",
    deprecated: false

  field :floodlight_order_id, 21,
    proto3_optional: true,
    type: :string,
    json_name: "floodlightOrderId",
    deprecated: false

  field :status, 22,
    proto3_optional: true,
    type: Google.Ads.Searchads360.V0.Enums.ConversionStatusEnum.ConversionStatus,
    enum: true,
    deprecated: false

  field :asset_id, 23,
    proto3_optional: true,
    type: :int64,
    json_name: "assetId",
    deprecated: false

  field :asset_field_type, 24,
    proto3_optional: true,
    type: Google.Ads.Searchads360.V0.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "assetFieldType",
    enum: true,
    deprecated: false
end
