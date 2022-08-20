defmodule Google.Ads.Googleads.V11.Resources.Campaign.PerformanceMaxUpgrade do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :performance_max_campaign, 1,
    type: :string,
    json_name: "performanceMaxCampaign",
    deprecated: false

  field :pre_upgrade_campaign, 2,
    type: :string,
    json_name: "preUpgradeCampaign",
    deprecated: false

  field :status, 3,
    type:
      Google.Ads.Googleads.V11.Enums.PerformanceMaxUpgradeStatusEnum.PerformanceMaxUpgradeStatus,
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.NetworkSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_google_search, 5,
    proto3_optional: true,
    type: :bool,
    json_name: "targetGoogleSearch"

  field :target_search_network, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "targetSearchNetwork"

  field :target_content_network, 7,
    proto3_optional: true,
    type: :bool,
    json_name: "targetContentNetwork"

  field :target_partner_search_network, 8,
    proto3_optional: true,
    type: :bool,
    json_name: "targetPartnerSearchNetwork"
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.HotelSettingInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hotel_center_id, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "hotelCenterId",
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.DynamicSearchAdsSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :domain_name, 6, type: :string, json_name: "domainName", deprecated: false
  field :language_code, 7, type: :string, json_name: "languageCode", deprecated: false

  field :use_supplied_urls_only, 8,
    proto3_optional: true,
    type: :bool,
    json_name: "useSuppliedUrlsOnly"

  field :feeds, 9, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.ShoppingSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :merchant_id, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "merchantId",
    deprecated: false

  field :sales_country, 6, proto3_optional: true, type: :string, json_name: "salesCountry"
  field :feed_label, 10, type: :string, json_name: "feedLabel"
  field :campaign_priority, 7, proto3_optional: true, type: :int32, json_name: "campaignPriority"
  field :enable_local, 8, proto3_optional: true, type: :bool, json_name: "enableLocal"

  field :use_vehicle_inventory, 9,
    type: :bool,
    json_name: "useVehicleInventory",
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.TrackingSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tracking_url, 2,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrl",
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.GeoTargetTypeSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :positive_geo_target_type, 1,
    type: Google.Ads.Googleads.V11.Enums.PositiveGeoTargetTypeEnum.PositiveGeoTargetType,
    json_name: "positiveGeoTargetType",
    enum: true

  field :negative_geo_target_type, 2,
    type: Google.Ads.Googleads.V11.Enums.NegativeGeoTargetTypeEnum.NegativeGeoTargetType,
    json_name: "negativeGeoTargetType",
    enum: true
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.LocalCampaignSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :location_source_type, 1,
    type: Google.Ads.Googleads.V11.Enums.LocationSourceTypeEnum.LocationSourceType,
    json_name: "locationSourceType",
    enum: true
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.AppCampaignSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bidding_strategy_goal_type, 1,
    type:
      Google.Ads.Googleads.V11.Enums.AppCampaignBiddingStrategyGoalTypeEnum.AppCampaignBiddingStrategyGoalType,
    json_name: "biddingStrategyGoalType",
    enum: true

  field :app_id, 4, proto3_optional: true, type: :string, json_name: "appId", deprecated: false

  field :app_store, 3,
    type: Google.Ads.Googleads.V11.Enums.AppCampaignAppStoreEnum.AppCampaignAppStore,
    json_name: "appStore",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.VanityPharma do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vanity_pharma_display_url_mode, 1,
    type:
      Google.Ads.Googleads.V11.Enums.VanityPharmaDisplayUrlModeEnum.VanityPharmaDisplayUrlMode,
    json_name: "vanityPharmaDisplayUrlMode",
    enum: true

  field :vanity_pharma_text, 2,
    type: Google.Ads.Googleads.V11.Enums.VanityPharmaTextEnum.VanityPharmaText,
    json_name: "vanityPharmaText",
    enum: true
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.SelectiveOptimization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conversion_actions, 2,
    repeated: true,
    type: :string,
    json_name: "conversionActions",
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.OptimizationGoalSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :optimization_goal_types, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Enums.OptimizationGoalTypeEnum.OptimizationGoalType,
    json_name: "optimizationGoalTypes",
    enum: true
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.AudienceSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :use_audience_grouped, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "useAudienceGrouped",
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.LocalServicesCampaignSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :category_bids, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Resources.Campaign.CategoryBid,
    json_name: "categoryBids"
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign.CategoryBid do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :category_id, 1, proto3_optional: true, type: :string, json_name: "categoryId"

  field :manual_cpa_bid_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "manualCpaBidMicros"
end

defmodule Google.Ads.Googleads.V11.Resources.Campaign do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :campaign_bidding_strategy, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 59, proto3_optional: true, type: :int64, deprecated: false
  field :name, 58, proto3_optional: true, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V11.Enums.CampaignStatusEnum.CampaignStatus,
    enum: true

  field :serving_status, 21,
    type: Google.Ads.Googleads.V11.Enums.CampaignServingStatusEnum.CampaignServingStatus,
    json_name: "servingStatus",
    enum: true,
    deprecated: false

  field :bidding_strategy_system_status, 78,
    type:
      Google.Ads.Googleads.V11.Enums.BiddingStrategySystemStatusEnum.BiddingStrategySystemStatus,
    json_name: "biddingStrategySystemStatus",
    enum: true,
    deprecated: false

  field :ad_serving_optimization_status, 8,
    type:
      Google.Ads.Googleads.V11.Enums.AdServingOptimizationStatusEnum.AdServingOptimizationStatus,
    json_name: "adServingOptimizationStatus",
    enum: true

  field :advertising_channel_type, 9,
    type: Google.Ads.Googleads.V11.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelType",
    enum: true,
    deprecated: false

  field :advertising_channel_sub_type, 10,
    type: Google.Ads.Googleads.V11.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    json_name: "advertisingChannelSubType",
    enum: true,
    deprecated: false

  field :tracking_url_template, 60,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 12,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :local_services_campaign_settings, 75,
    type: Google.Ads.Googleads.V11.Resources.Campaign.LocalServicesCampaignSettings,
    json_name: "localServicesCampaignSettings"

  field :real_time_bidding_setting, 39,
    type: Google.Ads.Googleads.V11.Common.RealTimeBiddingSetting,
    json_name: "realTimeBiddingSetting"

  field :network_settings, 14,
    type: Google.Ads.Googleads.V11.Resources.Campaign.NetworkSettings,
    json_name: "networkSettings"

  field :hotel_setting, 32,
    type: Google.Ads.Googleads.V11.Resources.Campaign.HotelSettingInfo,
    json_name: "hotelSetting",
    deprecated: false

  field :dynamic_search_ads_setting, 33,
    type: Google.Ads.Googleads.V11.Resources.Campaign.DynamicSearchAdsSetting,
    json_name: "dynamicSearchAdsSetting"

  field :shopping_setting, 36,
    type: Google.Ads.Googleads.V11.Resources.Campaign.ShoppingSetting,
    json_name: "shoppingSetting"

  field :targeting_setting, 43,
    type: Google.Ads.Googleads.V11.Common.TargetingSetting,
    json_name: "targetingSetting"

  field :audience_setting, 73,
    proto3_optional: true,
    type: Google.Ads.Googleads.V11.Resources.Campaign.AudienceSetting,
    json_name: "audienceSetting",
    deprecated: false

  field :geo_target_type_setting, 47,
    type: Google.Ads.Googleads.V11.Resources.Campaign.GeoTargetTypeSetting,
    json_name: "geoTargetTypeSetting"

  field :local_campaign_setting, 50,
    type: Google.Ads.Googleads.V11.Resources.Campaign.LocalCampaignSetting,
    json_name: "localCampaignSetting"

  field :app_campaign_setting, 51,
    type: Google.Ads.Googleads.V11.Resources.Campaign.AppCampaignSetting,
    json_name: "appCampaignSetting"

  field :labels, 61, repeated: true, type: :string, deprecated: false

  field :experiment_type, 17,
    type: Google.Ads.Googleads.V11.Enums.CampaignExperimentTypeEnum.CampaignExperimentType,
    json_name: "experimentType",
    enum: true,
    deprecated: false

  field :base_campaign, 56,
    proto3_optional: true,
    type: :string,
    json_name: "baseCampaign",
    deprecated: false

  field :campaign_budget, 62,
    proto3_optional: true,
    type: :string,
    json_name: "campaignBudget",
    deprecated: false

  field :bidding_strategy_type, 22,
    type: Google.Ads.Googleads.V11.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    json_name: "biddingStrategyType",
    enum: true,
    deprecated: false

  field :accessible_bidding_strategy, 71,
    type: :string,
    json_name: "accessibleBiddingStrategy",
    deprecated: false

  field :start_date, 63, proto3_optional: true, type: :string, json_name: "startDate"

  field :campaign_group, 76,
    proto3_optional: true,
    type: :string,
    json_name: "campaignGroup",
    deprecated: false

  field :end_date, 64, proto3_optional: true, type: :string, json_name: "endDate"
  field :final_url_suffix, 65, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"

  field :frequency_caps, 40,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.FrequencyCapEntry,
    json_name: "frequencyCaps"

  field :video_brand_safety_suitability, 42,
    type: Google.Ads.Googleads.V11.Enums.BrandSafetySuitabilityEnum.BrandSafetySuitability,
    json_name: "videoBrandSafetySuitability",
    enum: true,
    deprecated: false

  field :vanity_pharma, 44,
    type: Google.Ads.Googleads.V11.Resources.Campaign.VanityPharma,
    json_name: "vanityPharma"

  field :selective_optimization, 45,
    type: Google.Ads.Googleads.V11.Resources.Campaign.SelectiveOptimization,
    json_name: "selectiveOptimization"

  field :optimization_goal_setting, 54,
    type: Google.Ads.Googleads.V11.Resources.Campaign.OptimizationGoalSetting,
    json_name: "optimizationGoalSetting"

  field :tracking_setting, 46,
    type: Google.Ads.Googleads.V11.Resources.Campaign.TrackingSetting,
    json_name: "trackingSetting",
    deprecated: false

  field :payment_mode, 52,
    type: Google.Ads.Googleads.V11.Enums.PaymentModeEnum.PaymentMode,
    json_name: "paymentMode",
    enum: true

  field :optimization_score, 66,
    proto3_optional: true,
    type: :double,
    json_name: "optimizationScore",
    deprecated: false

  field :excluded_parent_asset_field_types, 69,
    repeated: true,
    type: Google.Ads.Googleads.V11.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "excludedParentAssetFieldTypes",
    enum: true

  field :url_expansion_opt_out, 72,
    proto3_optional: true,
    type: :bool,
    json_name: "urlExpansionOptOut"

  field :performance_max_upgrade, 77,
    type: Google.Ads.Googleads.V11.Resources.Campaign.PerformanceMaxUpgrade,
    json_name: "performanceMaxUpgrade",
    deprecated: false

  field :bidding_strategy, 67,
    type: :string,
    json_name: "biddingStrategy",
    oneof: 0,
    deprecated: false

  field :commission, 49, type: Google.Ads.Googleads.V11.Common.Commission, oneof: 0

  field :manual_cpa, 74,
    type: Google.Ads.Googleads.V11.Common.ManualCpa,
    json_name: "manualCpa",
    oneof: 0

  field :manual_cpc, 24,
    type: Google.Ads.Googleads.V11.Common.ManualCpc,
    json_name: "manualCpc",
    oneof: 0

  field :manual_cpm, 25,
    type: Google.Ads.Googleads.V11.Common.ManualCpm,
    json_name: "manualCpm",
    oneof: 0

  field :manual_cpv, 37,
    type: Google.Ads.Googleads.V11.Common.ManualCpv,
    json_name: "manualCpv",
    oneof: 0,
    deprecated: false

  field :maximize_conversions, 30,
    type: Google.Ads.Googleads.V11.Common.MaximizeConversions,
    json_name: "maximizeConversions",
    oneof: 0

  field :maximize_conversion_value, 31,
    type: Google.Ads.Googleads.V11.Common.MaximizeConversionValue,
    json_name: "maximizeConversionValue",
    oneof: 0

  field :target_cpa, 26,
    type: Google.Ads.Googleads.V11.Common.TargetCpa,
    json_name: "targetCpa",
    oneof: 0

  field :target_impression_share, 48,
    type: Google.Ads.Googleads.V11.Common.TargetImpressionShare,
    json_name: "targetImpressionShare",
    oneof: 0

  field :target_roas, 29,
    type: Google.Ads.Googleads.V11.Common.TargetRoas,
    json_name: "targetRoas",
    oneof: 0

  field :target_spend, 27,
    type: Google.Ads.Googleads.V11.Common.TargetSpend,
    json_name: "targetSpend",
    oneof: 0

  field :percent_cpc, 34,
    type: Google.Ads.Googleads.V11.Common.PercentCpc,
    json_name: "percentCpc",
    oneof: 0

  field :target_cpm, 41,
    type: Google.Ads.Googleads.V11.Common.TargetCpm,
    json_name: "targetCpm",
    oneof: 0
end