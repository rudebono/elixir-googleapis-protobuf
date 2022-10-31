defmodule Google.Ads.Searchads360.V0.Resources.Campaign.NetworkSettings do
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

defmodule Google.Ads.Searchads360.V0.Resources.Campaign.DynamicSearchAdsSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :domain_name, 6, type: :string, json_name: "domainName", deprecated: false
  field :language_code, 7, type: :string, json_name: "languageCode", deprecated: false

  field :use_supplied_urls_only, 8,
    proto3_optional: true,
    type: :bool,
    json_name: "useSuppliedUrlsOnly"
end

defmodule Google.Ads.Searchads360.V0.Resources.Campaign.ShoppingSetting do
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

defmodule Google.Ads.Searchads360.V0.Resources.Campaign.TrackingSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tracking_url, 2,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrl",
    deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Resources.Campaign.GeoTargetTypeSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :positive_geo_target_type, 1,
    type: Google.Ads.Searchads360.V0.Enums.PositiveGeoTargetTypeEnum.PositiveGeoTargetType,
    json_name: "positiveGeoTargetType",
    enum: true

  field :negative_geo_target_type, 2,
    type: Google.Ads.Searchads360.V0.Enums.NegativeGeoTargetTypeEnum.NegativeGeoTargetType,
    json_name: "negativeGeoTargetType",
    enum: true
end

defmodule Google.Ads.Searchads360.V0.Resources.Campaign.SelectiveOptimization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conversion_actions, 2,
    repeated: true,
    type: :string,
    json_name: "conversionActions",
    deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Resources.Campaign.OptimizationGoalSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :optimization_goal_types, 1,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Enums.OptimizationGoalTypeEnum.OptimizationGoalType,
    json_name: "optimizationGoalTypes",
    enum: true
end

defmodule Google.Ads.Searchads360.V0.Resources.Campaign do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :campaign_bidding_strategy, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 59, proto3_optional: true, type: :int64, deprecated: false
  field :name, 58, proto3_optional: true, type: :string

  field :status, 5,
    type: Google.Ads.Searchads360.V0.Enums.CampaignStatusEnum.CampaignStatus,
    enum: true

  field :serving_status, 21,
    type: Google.Ads.Searchads360.V0.Enums.CampaignServingStatusEnum.CampaignServingStatus,
    json_name: "servingStatus",
    enum: true,
    deprecated: false

  field :bidding_strategy_system_status, 78,
    type:
      Google.Ads.Searchads360.V0.Enums.BiddingStrategySystemStatusEnum.BiddingStrategySystemStatus,
    json_name: "biddingStrategySystemStatus",
    enum: true,
    deprecated: false

  field :ad_serving_optimization_status, 8,
    type:
      Google.Ads.Searchads360.V0.Enums.AdServingOptimizationStatusEnum.AdServingOptimizationStatus,
    json_name: "adServingOptimizationStatus",
    enum: true

  field :advertising_channel_type, 9,
    type: Google.Ads.Searchads360.V0.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelType",
    enum: true,
    deprecated: false

  field :advertising_channel_sub_type, 10,
    type:
      Google.Ads.Searchads360.V0.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    json_name: "advertisingChannelSubType",
    enum: true,
    deprecated: false

  field :tracking_url_template, 60,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 12,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :real_time_bidding_setting, 39,
    type: Google.Ads.Searchads360.V0.Common.RealTimeBiddingSetting,
    json_name: "realTimeBiddingSetting"

  field :network_settings, 14,
    type: Google.Ads.Searchads360.V0.Resources.Campaign.NetworkSettings,
    json_name: "networkSettings"

  field :dynamic_search_ads_setting, 33,
    type: Google.Ads.Searchads360.V0.Resources.Campaign.DynamicSearchAdsSetting,
    json_name: "dynamicSearchAdsSetting"

  field :shopping_setting, 36,
    type: Google.Ads.Searchads360.V0.Resources.Campaign.ShoppingSetting,
    json_name: "shoppingSetting"

  field :geo_target_type_setting, 47,
    type: Google.Ads.Searchads360.V0.Resources.Campaign.GeoTargetTypeSetting,
    json_name: "geoTargetTypeSetting"

  field :labels, 61, repeated: true, type: :string, deprecated: false

  field :campaign_budget, 62,
    proto3_optional: true,
    type: :string,
    json_name: "campaignBudget",
    deprecated: false

  field :bidding_strategy_type, 22,
    type: Google.Ads.Searchads360.V0.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    json_name: "biddingStrategyType",
    enum: true,
    deprecated: false

  field :start_date, 63, proto3_optional: true, type: :string, json_name: "startDate"
  field :end_date, 64, proto3_optional: true, type: :string, json_name: "endDate"
  field :final_url_suffix, 65, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"

  field :frequency_caps, 40,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.FrequencyCapEntry,
    json_name: "frequencyCaps"

  field :selective_optimization, 45,
    type: Google.Ads.Searchads360.V0.Resources.Campaign.SelectiveOptimization,
    json_name: "selectiveOptimization"

  field :optimization_goal_setting, 54,
    type: Google.Ads.Searchads360.V0.Resources.Campaign.OptimizationGoalSetting,
    json_name: "optimizationGoalSetting"

  field :tracking_setting, 46,
    type: Google.Ads.Searchads360.V0.Resources.Campaign.TrackingSetting,
    json_name: "trackingSetting",
    deprecated: false

  field :engine_id, 68, type: :string, json_name: "engineId", deprecated: false

  field :excluded_parent_asset_field_types, 69,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "excludedParentAssetFieldTypes",
    enum: true

  field :create_time, 79, type: :string, json_name: "createTime", deprecated: false
  field :last_modified_time, 70, type: :string, json_name: "lastModifiedTime", deprecated: false

  field :url_expansion_opt_out, 72,
    proto3_optional: true,
    type: :bool,
    json_name: "urlExpansionOptOut"

  field :bidding_strategy, 67,
    type: :string,
    json_name: "biddingStrategy",
    oneof: 0,
    deprecated: false

  field :manual_cpa, 74,
    type: Google.Ads.Searchads360.V0.Common.ManualCpa,
    json_name: "manualCpa",
    oneof: 0

  field :manual_cpc, 24,
    type: Google.Ads.Searchads360.V0.Common.ManualCpc,
    json_name: "manualCpc",
    oneof: 0

  field :manual_cpm, 25,
    type: Google.Ads.Searchads360.V0.Common.ManualCpm,
    json_name: "manualCpm",
    oneof: 0

  field :maximize_conversions, 30,
    type: Google.Ads.Searchads360.V0.Common.MaximizeConversions,
    json_name: "maximizeConversions",
    oneof: 0

  field :maximize_conversion_value, 31,
    type: Google.Ads.Searchads360.V0.Common.MaximizeConversionValue,
    json_name: "maximizeConversionValue",
    oneof: 0

  field :target_cpa, 26,
    type: Google.Ads.Searchads360.V0.Common.TargetCpa,
    json_name: "targetCpa",
    oneof: 0

  field :target_impression_share, 48,
    type: Google.Ads.Searchads360.V0.Common.TargetImpressionShare,
    json_name: "targetImpressionShare",
    oneof: 0

  field :target_roas, 29,
    type: Google.Ads.Searchads360.V0.Common.TargetRoas,
    json_name: "targetRoas",
    oneof: 0

  field :target_spend, 27,
    type: Google.Ads.Searchads360.V0.Common.TargetSpend,
    json_name: "targetSpend",
    oneof: 0

  field :percent_cpc, 34,
    type: Google.Ads.Searchads360.V0.Common.PercentCpc,
    json_name: "percentCpc",
    oneof: 0

  field :target_cpm, 41,
    type: Google.Ads.Searchads360.V0.Common.TargetCpm,
    json_name: "targetCpm",
    oneof: 0
end