defmodule Google.Ads.Googleads.V12.Common.Segments do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ad_destination_type, 136,
    type: Google.Ads.Googleads.V12.Enums.AdDestinationTypeEnum.AdDestinationType,
    json_name: "adDestinationType",
    enum: true

  field :ad_network_type, 3,
    type: Google.Ads.Googleads.V12.Enums.AdNetworkTypeEnum.AdNetworkType,
    json_name: "adNetworkType",
    enum: true

  field :auction_insight_domain, 145,
    proto3_optional: true,
    type: :string,
    json_name: "auctionInsightDomain"

  field :budget_campaign_association_status, 134,
    type: Google.Ads.Googleads.V12.Common.BudgetCampaignAssociationStatus,
    json_name: "budgetCampaignAssociationStatus"

  field :click_type, 26,
    type: Google.Ads.Googleads.V12.Enums.ClickTypeEnum.ClickType,
    json_name: "clickType",
    enum: true

  field :conversion_action, 113,
    proto3_optional: true,
    type: :string,
    json_name: "conversionAction",
    deprecated: false

  field :conversion_action_category, 53,
    type: Google.Ads.Googleads.V12.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    json_name: "conversionActionCategory",
    enum: true

  field :conversion_action_name, 114,
    proto3_optional: true,
    type: :string,
    json_name: "conversionActionName"

  field :conversion_adjustment, 115,
    proto3_optional: true,
    type: :bool,
    json_name: "conversionAdjustment"

  field :conversion_attribution_event_type, 2,
    type:
      Google.Ads.Googleads.V12.Enums.ConversionAttributionEventTypeEnum.ConversionAttributionEventType,
    json_name: "conversionAttributionEventType",
    enum: true

  field :conversion_lag_bucket, 50,
    type: Google.Ads.Googleads.V12.Enums.ConversionLagBucketEnum.ConversionLagBucket,
    json_name: "conversionLagBucket",
    enum: true

  field :conversion_or_adjustment_lag_bucket, 51,
    type:
      Google.Ads.Googleads.V12.Enums.ConversionOrAdjustmentLagBucketEnum.ConversionOrAdjustmentLagBucket,
    json_name: "conversionOrAdjustmentLagBucket",
    enum: true

  field :date, 79, proto3_optional: true, type: :string

  field :day_of_week, 5,
    type: Google.Ads.Googleads.V12.Enums.DayOfWeekEnum.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true

  field :device, 1, type: Google.Ads.Googleads.V12.Enums.DeviceEnum.Device, enum: true

  field :external_conversion_source, 55,
    type: Google.Ads.Googleads.V12.Enums.ExternalConversionSourceEnum.ExternalConversionSource,
    json_name: "externalConversionSource",
    enum: true

  field :geo_target_airport, 116,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetAirport"

  field :geo_target_canton, 117,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetCanton"

  field :geo_target_city, 118, proto3_optional: true, type: :string, json_name: "geoTargetCity"

  field :geo_target_country, 119,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetCountry"

  field :geo_target_county, 120,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetCounty"

  field :geo_target_district, 121,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetDistrict"

  field :geo_target_metro, 122, proto3_optional: true, type: :string, json_name: "geoTargetMetro"

  field :geo_target_most_specific_location, 123,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetMostSpecificLocation"

  field :geo_target_postal_code, 124,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetPostalCode"

  field :geo_target_province, 125,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetProvince"

  field :geo_target_region, 126,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetRegion"

  field :geo_target_state, 127, proto3_optional: true, type: :string, json_name: "geoTargetState"

  field :hotel_booking_window_days, 135,
    proto3_optional: true,
    type: :int64,
    json_name: "hotelBookingWindowDays"

  field :hotel_center_id, 80, proto3_optional: true, type: :int64, json_name: "hotelCenterId"

  field :hotel_check_in_date, 81,
    proto3_optional: true,
    type: :string,
    json_name: "hotelCheckInDate"

  field :hotel_check_in_day_of_week, 9,
    type: Google.Ads.Googleads.V12.Enums.DayOfWeekEnum.DayOfWeek,
    json_name: "hotelCheckInDayOfWeek",
    enum: true

  field :hotel_city, 82, proto3_optional: true, type: :string, json_name: "hotelCity"
  field :hotel_class, 83, proto3_optional: true, type: :int32, json_name: "hotelClass"
  field :hotel_country, 84, proto3_optional: true, type: :string, json_name: "hotelCountry"

  field :hotel_date_selection_type, 13,
    type: Google.Ads.Googleads.V12.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType,
    json_name: "hotelDateSelectionType",
    enum: true

  field :hotel_length_of_stay, 85,
    proto3_optional: true,
    type: :int32,
    json_name: "hotelLengthOfStay"

  field :hotel_rate_rule_id, 86,
    proto3_optional: true,
    type: :string,
    json_name: "hotelRateRuleId"

  field :hotel_rate_type, 74,
    type: Google.Ads.Googleads.V12.Enums.HotelRateTypeEnum.HotelRateType,
    json_name: "hotelRateType",
    enum: true

  field :hotel_price_bucket, 78,
    type: Google.Ads.Googleads.V12.Enums.HotelPriceBucketEnum.HotelPriceBucket,
    json_name: "hotelPriceBucket",
    enum: true

  field :hotel_state, 87, proto3_optional: true, type: :string, json_name: "hotelState"
  field :hour, 88, proto3_optional: true, type: :int32

  field :interaction_on_this_extension, 89,
    proto3_optional: true,
    type: :bool,
    json_name: "interactionOnThisExtension"

  field :keyword, 61, type: Google.Ads.Googleads.V12.Common.Keyword
  field :month, 90, proto3_optional: true, type: :string

  field :month_of_year, 18,
    type: Google.Ads.Googleads.V12.Enums.MonthOfYearEnum.MonthOfYear,
    json_name: "monthOfYear",
    enum: true

  field :partner_hotel_id, 91, proto3_optional: true, type: :string, json_name: "partnerHotelId"

  field :placeholder_type, 20,
    type: Google.Ads.Googleads.V12.Enums.PlaceholderTypeEnum.PlaceholderType,
    json_name: "placeholderType",
    enum: true

  field :product_aggregator_id, 132,
    proto3_optional: true,
    type: :int64,
    json_name: "productAggregatorId"

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
    type: Google.Ads.Googleads.V12.Enums.ProductChannelEnum.ProductChannel,
    json_name: "productChannel",
    enum: true

  field :product_channel_exclusivity, 31,
    type: Google.Ads.Googleads.V12.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity,
    json_name: "productChannelExclusivity",
    enum: true

  field :product_condition, 32,
    type: Google.Ads.Googleads.V12.Enums.ProductConditionEnum.ProductCondition,
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

  field :product_merchant_id, 133,
    proto3_optional: true,
    type: :int64,
    json_name: "productMerchantId"

  field :product_store_id, 106, proto3_optional: true, type: :string, json_name: "productStoreId"
  field :product_title, 107, proto3_optional: true, type: :string, json_name: "productTitle"
  field :product_type_l1, 108, proto3_optional: true, type: :string, json_name: "productTypeL1"
  field :product_type_l2, 109, proto3_optional: true, type: :string, json_name: "productTypeL2"
  field :product_type_l3, 110, proto3_optional: true, type: :string, json_name: "productTypeL3"
  field :product_type_l4, 111, proto3_optional: true, type: :string, json_name: "productTypeL4"
  field :product_type_l5, 112, proto3_optional: true, type: :string, json_name: "productTypeL5"
  field :quarter, 128, proto3_optional: true, type: :string

  field :recommendation_type, 140,
    type: Google.Ads.Googleads.V12.Enums.RecommendationTypeEnum.RecommendationType,
    json_name: "recommendationType",
    enum: true

  field :search_engine_results_page_type, 70,
    type:
      Google.Ads.Googleads.V12.Enums.SearchEngineResultsPageTypeEnum.SearchEngineResultsPageType,
    json_name: "searchEngineResultsPageType",
    enum: true

  field :search_term_match_type, 22,
    type: Google.Ads.Googleads.V12.Enums.SearchTermMatchTypeEnum.SearchTermMatchType,
    json_name: "searchTermMatchType",
    enum: true

  field :slot, 23, type: Google.Ads.Googleads.V12.Enums.SlotEnum.Slot, enum: true

  field :conversion_value_rule_primary_dimension, 138,
    type:
      Google.Ads.Googleads.V12.Enums.ConversionValueRulePrimaryDimensionEnum.ConversionValueRulePrimaryDimension,
    json_name: "conversionValueRulePrimaryDimension",
    enum: true

  field :webpage, 129, proto3_optional: true, type: :string
  field :week, 130, proto3_optional: true, type: :string
  field :year, 131, proto3_optional: true, type: :int32

  field :sk_ad_network_conversion_value, 137,
    proto3_optional: true,
    type: :int64,
    json_name: "skAdNetworkConversionValue"

  field :sk_ad_network_user_type, 141,
    type: Google.Ads.Googleads.V12.Enums.SkAdNetworkUserTypeEnum.SkAdNetworkUserType,
    json_name: "skAdNetworkUserType",
    enum: true

  field :sk_ad_network_ad_event_type, 142,
    type: Google.Ads.Googleads.V12.Enums.SkAdNetworkAdEventTypeEnum.SkAdNetworkAdEventType,
    json_name: "skAdNetworkAdEventType",
    enum: true

  field :sk_ad_network_source_app, 143,
    proto3_optional: true,
    type: Google.Ads.Googleads.V12.Common.SkAdNetworkSourceApp,
    json_name: "skAdNetworkSourceApp"

  field :sk_ad_network_attribution_credit, 144,
    type:
      Google.Ads.Googleads.V12.Enums.SkAdNetworkAttributionCreditEnum.SkAdNetworkAttributionCredit,
    json_name: "skAdNetworkAttributionCredit",
    enum: true

  field :asset_interaction_target, 139,
    proto3_optional: true,
    type: Google.Ads.Googleads.V12.Common.AssetInteractionTarget,
    json_name: "assetInteractionTarget"
end

defmodule Google.Ads.Googleads.V12.Common.Keyword do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ad_group_criterion, 3,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupCriterion"

  field :info, 2, type: Google.Ads.Googleads.V12.Common.KeywordInfo
end

defmodule Google.Ads.Googleads.V12.Common.BudgetCampaignAssociationStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :campaign, 1, proto3_optional: true, type: :string

  field :status, 2,
    type:
      Google.Ads.Googleads.V12.Enums.BudgetCampaignAssociationStatusEnum.BudgetCampaignAssociationStatus,
    enum: true
end

defmodule Google.Ads.Googleads.V12.Common.AssetInteractionTarget do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :asset, 1, type: :string
  field :interaction_on_this_asset, 2, type: :bool, json_name: "interactionOnThisAsset"
end

defmodule Google.Ads.Googleads.V12.Common.SkAdNetworkSourceApp do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sk_ad_network_source_app_id, 1,
    proto3_optional: true,
    type: :string,
    json_name: "skAdNetworkSourceAppId"
end