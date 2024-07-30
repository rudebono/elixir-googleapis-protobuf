defmodule Google.Ads.Searchads360.V0.Common.Segments do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ad_network_type, 3,
    type: Google.Ads.Searchads360.V0.Enums.AdNetworkTypeEnum.AdNetworkType,
    json_name: "adNetworkType",
    enum: true

  field :conversion_action, 146,
    proto3_optional: true,
    type: :string,
    json_name: "conversionAction",
    deprecated: false

  field :conversion_action_category, 53,
    type: Google.Ads.Searchads360.V0.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    json_name: "conversionActionCategory",
    enum: true

  field :conversion_action_name, 114,
    proto3_optional: true,
    type: :string,
    json_name: "conversionActionName"

  field :conversion_custom_dimensions, 188,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.Value,
    json_name: "conversionCustomDimensions"

  field :date, 79, proto3_optional: true, type: :string

  field :day_of_week, 5,
    type: Google.Ads.Searchads360.V0.Enums.DayOfWeekEnum.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true

  field :device, 1, type: Google.Ads.Searchads360.V0.Enums.DeviceEnum.Device, enum: true
  field :geo_target_city, 118, proto3_optional: true, type: :string, json_name: "geoTargetCity"

  field :geo_target_country, 119,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetCountry"

  field :geo_target_metro, 122, proto3_optional: true, type: :string, json_name: "geoTargetMetro"

  field :geo_target_region, 126,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetRegion"

  field :hour, 88, proto3_optional: true, type: :int32
  field :keyword, 61, type: Google.Ads.Searchads360.V0.Common.Keyword
  field :month, 90, proto3_optional: true, type: :string

  field :product_bidding_category_level1, 92,
    proto3_optional: true,
    type: :string,
    json_name: "productBiddingCategoryLevel1"

  field :product_bidding_category_level2, 93,
    proto3_optional: true,
    type: :string,
    json_name: "productBiddingCategoryLevel2"

  field :product_bidding_category_level3, 94,
    proto3_optional: true,
    type: :string,
    json_name: "productBiddingCategoryLevel3"

  field :product_bidding_category_level4, 95,
    proto3_optional: true,
    type: :string,
    json_name: "productBiddingCategoryLevel4"

  field :product_bidding_category_level5, 96,
    proto3_optional: true,
    type: :string,
    json_name: "productBiddingCategoryLevel5"

  field :product_brand, 97, proto3_optional: true, type: :string, json_name: "productBrand"

  field :product_channel, 30,
    type: Google.Ads.Searchads360.V0.Enums.ProductChannelEnum.ProductChannel,
    json_name: "productChannel",
    enum: true

  field :product_channel_exclusivity, 31,
    type:
      Google.Ads.Searchads360.V0.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity,
    json_name: "productChannelExclusivity",
    enum: true

  field :product_condition, 32,
    type: Google.Ads.Searchads360.V0.Enums.ProductConditionEnum.ProductCondition,
    json_name: "productCondition",
    enum: true

  field :product_country, 98, proto3_optional: true, type: :string, json_name: "productCountry"

  field :product_custom_attribute0, 99,
    proto3_optional: true,
    type: :string,
    json_name: "productCustomAttribute0"

  field :product_custom_attribute1, 100,
    proto3_optional: true,
    type: :string,
    json_name: "productCustomAttribute1"

  field :product_custom_attribute2, 101,
    proto3_optional: true,
    type: :string,
    json_name: "productCustomAttribute2"

  field :product_custom_attribute3, 102,
    proto3_optional: true,
    type: :string,
    json_name: "productCustomAttribute3"

  field :product_custom_attribute4, 103,
    proto3_optional: true,
    type: :string,
    json_name: "productCustomAttribute4"

  field :product_item_id, 104, proto3_optional: true, type: :string, json_name: "productItemId"
  field :product_language, 105, proto3_optional: true, type: :string, json_name: "productLanguage"

  field :product_sold_bidding_category_level1, 166,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldBiddingCategoryLevel1"

  field :product_sold_bidding_category_level2, 167,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldBiddingCategoryLevel2"

  field :product_sold_bidding_category_level3, 168,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldBiddingCategoryLevel3"

  field :product_sold_bidding_category_level4, 169,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldBiddingCategoryLevel4"

  field :product_sold_bidding_category_level5, 170,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldBiddingCategoryLevel5"

  field :product_sold_brand, 171,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldBrand"

  field :product_sold_condition, 172,
    type: Google.Ads.Searchads360.V0.Enums.ProductConditionEnum.ProductCondition,
    json_name: "productSoldCondition",
    enum: true

  field :product_sold_custom_attribute0, 173,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldCustomAttribute0"

  field :product_sold_custom_attribute1, 174,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldCustomAttribute1"

  field :product_sold_custom_attribute2, 175,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldCustomAttribute2"

  field :product_sold_custom_attribute3, 176,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldCustomAttribute3"

  field :product_sold_custom_attribute4, 177,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldCustomAttribute4"

  field :product_sold_item_id, 178,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldItemId"

  field :product_sold_title, 179,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldTitle"

  field :product_sold_type_l1, 180,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldTypeL1"

  field :product_sold_type_l2, 181,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldTypeL2"

  field :product_sold_type_l3, 182,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldTypeL3"

  field :product_sold_type_l4, 183,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldTypeL4"

  field :product_sold_type_l5, 184,
    proto3_optional: true,
    type: :string,
    json_name: "productSoldTypeL5"

  field :product_store_id, 106, proto3_optional: true, type: :string, json_name: "productStoreId"
  field :product_title, 107, proto3_optional: true, type: :string, json_name: "productTitle"
  field :product_type_l1, 108, proto3_optional: true, type: :string, json_name: "productTypeL1"
  field :product_type_l2, 109, proto3_optional: true, type: :string, json_name: "productTypeL2"
  field :product_type_l3, 110, proto3_optional: true, type: :string, json_name: "productTypeL3"
  field :product_type_l4, 111, proto3_optional: true, type: :string, json_name: "productTypeL4"
  field :product_type_l5, 112, proto3_optional: true, type: :string, json_name: "productTypeL5"
  field :quarter, 128, proto3_optional: true, type: :string

  field :raw_event_conversion_dimensions, 189,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.Value,
    json_name: "rawEventConversionDimensions"

  field :week, 130, proto3_optional: true, type: :string
  field :year, 131, proto3_optional: true, type: :int32

  field :asset_interaction_target, 139,
    proto3_optional: true,
    type: Google.Ads.Searchads360.V0.Common.AssetInteractionTarget,
    json_name: "assetInteractionTarget"
end

defmodule Google.Ads.Searchads360.V0.Common.Keyword do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ad_group_criterion, 3,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupCriterion"

  field :info, 2, type: Google.Ads.Searchads360.V0.Common.KeywordInfo
end

defmodule Google.Ads.Searchads360.V0.Common.AssetInteractionTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset, 1, type: :string
  field :interaction_on_this_asset, 2, type: :bool, json_name: "interactionOnThisAsset"
end