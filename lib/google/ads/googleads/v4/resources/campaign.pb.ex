defmodule Google.Ads.Googleads.V4.Resources.Campaign.NetworkSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_google_search: Google.Protobuf.BoolValue.t() | nil,
          target_search_network: Google.Protobuf.BoolValue.t() | nil,
          target_content_network: Google.Protobuf.BoolValue.t() | nil,
          target_partner_search_network: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :target_google_search,
    :target_search_network,
    :target_content_network,
    :target_partner_search_network
  ]

  field :target_google_search, 1, type: Google.Protobuf.BoolValue
  field :target_search_network, 2, type: Google.Protobuf.BoolValue
  field :target_content_network, 3, type: Google.Protobuf.BoolValue
  field :target_partner_search_network, 4, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.HotelSettingInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hotel_center_id: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:hotel_center_id]

  field :hotel_center_id, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.DynamicSearchAdsSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain_name: Google.Protobuf.StringValue.t() | nil,
          language_code: Google.Protobuf.StringValue.t() | nil,
          use_supplied_urls_only: Google.Protobuf.BoolValue.t() | nil,
          feeds: [Google.Protobuf.StringValue.t()]
        }

  defstruct [:domain_name, :language_code, :use_supplied_urls_only, :feeds]

  field :domain_name, 1, type: Google.Protobuf.StringValue
  field :language_code, 2, type: Google.Protobuf.StringValue
  field :use_supplied_urls_only, 3, type: Google.Protobuf.BoolValue
  field :feeds, 5, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.SelectiveOptimization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversion_actions: [Google.Protobuf.StringValue.t()]
        }

  defstruct [:conversion_actions]

  field :conversion_actions, 1, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.ShoppingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          merchant_id: Google.Protobuf.Int64Value.t() | nil,
          sales_country: Google.Protobuf.StringValue.t() | nil,
          campaign_priority: Google.Protobuf.Int32Value.t() | nil,
          enable_local: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:merchant_id, :sales_country, :campaign_priority, :enable_local]

  field :merchant_id, 1, type: Google.Protobuf.Int64Value
  field :sales_country, 2, type: Google.Protobuf.StringValue
  field :campaign_priority, 3, type: Google.Protobuf.Int32Value
  field :enable_local, 4, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.LocalCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location_source_type:
            Google.Ads.Googleads.V4.Enums.LocationSourceTypeEnum.LocationSourceType.t()
        }

  defstruct [:location_source_type]

  field :location_source_type, 1,
    type: Google.Ads.Googleads.V4.Enums.LocationSourceTypeEnum.LocationSourceType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.TrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tracking_url: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:tracking_url]

  field :tracking_url, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.GeoTargetTypeSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          positive_geo_target_type:
            Google.Ads.Googleads.V4.Enums.PositiveGeoTargetTypeEnum.PositiveGeoTargetType.t(),
          negative_geo_target_type:
            Google.Ads.Googleads.V4.Enums.NegativeGeoTargetTypeEnum.NegativeGeoTargetType.t()
        }

  defstruct [:positive_geo_target_type, :negative_geo_target_type]

  field :positive_geo_target_type, 1,
    type: Google.Ads.Googleads.V4.Enums.PositiveGeoTargetTypeEnum.PositiveGeoTargetType,
    enum: true

  field :negative_geo_target_type, 2,
    type: Google.Ads.Googleads.V4.Enums.NegativeGeoTargetTypeEnum.NegativeGeoTargetType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.AppCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bidding_strategy_goal_type:
            Google.Ads.Googleads.V4.Enums.AppCampaignBiddingStrategyGoalTypeEnum.AppCampaignBiddingStrategyGoalType.t(),
          app_id: Google.Protobuf.StringValue.t() | nil,
          app_store: Google.Ads.Googleads.V4.Enums.AppCampaignAppStoreEnum.AppCampaignAppStore.t()
        }

  defstruct [:bidding_strategy_goal_type, :app_id, :app_store]

  field :bidding_strategy_goal_type, 1,
    type:
      Google.Ads.Googleads.V4.Enums.AppCampaignBiddingStrategyGoalTypeEnum.AppCampaignBiddingStrategyGoalType,
    enum: true

  field :app_id, 2, type: Google.Protobuf.StringValue

  field :app_store, 3,
    type: Google.Ads.Googleads.V4.Enums.AppCampaignAppStoreEnum.AppCampaignAppStore,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.OptimizationGoalSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          optimization_goal_types: [
            [Google.Ads.Googleads.V4.Enums.OptimizationGoalTypeEnum.OptimizationGoalType.t()]
          ]
        }

  defstruct [:optimization_goal_types]

  field :optimization_goal_types, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Enums.OptimizationGoalTypeEnum.OptimizationGoalType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.VanityPharma do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vanity_pharma_display_url_mode:
            Google.Ads.Googleads.V4.Enums.VanityPharmaDisplayUrlModeEnum.VanityPharmaDisplayUrlMode.t(),
          vanity_pharma_text:
            Google.Ads.Googleads.V4.Enums.VanityPharmaTextEnum.VanityPharmaText.t()
        }

  defstruct [:vanity_pharma_display_url_mode, :vanity_pharma_text]

  field :vanity_pharma_display_url_mode, 1,
    type: Google.Ads.Googleads.V4.Enums.VanityPharmaDisplayUrlModeEnum.VanityPharmaDisplayUrlMode,
    enum: true

  field :vanity_pharma_text, 2,
    type: Google.Ads.Googleads.V4.Enums.VanityPharmaTextEnum.VanityPharmaText,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_bidding_strategy: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          status: Google.Ads.Googleads.V4.Enums.CampaignStatusEnum.CampaignStatus.t(),
          serving_status:
            Google.Ads.Googleads.V4.Enums.CampaignServingStatusEnum.CampaignServingStatus.t(),
          ad_serving_optimization_status:
            Google.Ads.Googleads.V4.Enums.AdServingOptimizationStatusEnum.AdServingOptimizationStatus.t(),
          advertising_channel_type:
            Google.Ads.Googleads.V4.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType.t(),
          advertising_channel_sub_type:
            Google.Ads.Googleads.V4.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType.t(),
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          url_custom_parameters: [Google.Ads.Googleads.V4.Common.CustomParameter.t()],
          real_time_bidding_setting:
            Google.Ads.Googleads.V4.Common.RealTimeBiddingSetting.t() | nil,
          network_settings: Google.Ads.Googleads.V4.Resources.Campaign.NetworkSettings.t() | nil,
          hotel_setting: Google.Ads.Googleads.V4.Resources.Campaign.HotelSettingInfo.t() | nil,
          dynamic_search_ads_setting:
            Google.Ads.Googleads.V4.Resources.Campaign.DynamicSearchAdsSetting.t() | nil,
          shopping_setting: Google.Ads.Googleads.V4.Resources.Campaign.ShoppingSetting.t() | nil,
          targeting_setting: Google.Ads.Googleads.V4.Common.TargetingSetting.t() | nil,
          geo_target_type_setting:
            Google.Ads.Googleads.V4.Resources.Campaign.GeoTargetTypeSetting.t() | nil,
          local_campaign_setting:
            Google.Ads.Googleads.V4.Resources.Campaign.LocalCampaignSetting.t() | nil,
          app_campaign_setting:
            Google.Ads.Googleads.V4.Resources.Campaign.AppCampaignSetting.t() | nil,
          labels: [Google.Protobuf.StringValue.t()],
          experiment_type:
            Google.Ads.Googleads.V4.Enums.CampaignExperimentTypeEnum.CampaignExperimentType.t(),
          base_campaign: Google.Protobuf.StringValue.t() | nil,
          campaign_budget: Google.Protobuf.StringValue.t() | nil,
          bidding_strategy_type:
            Google.Ads.Googleads.V4.Enums.BiddingStrategyTypeEnum.BiddingStrategyType.t(),
          start_date: Google.Protobuf.StringValue.t() | nil,
          end_date: Google.Protobuf.StringValue.t() | nil,
          final_url_suffix: Google.Protobuf.StringValue.t() | nil,
          frequency_caps: [Google.Ads.Googleads.V4.Common.FrequencyCapEntry.t()],
          video_brand_safety_suitability:
            Google.Ads.Googleads.V4.Enums.BrandSafetySuitabilityEnum.BrandSafetySuitability.t(),
          vanity_pharma: Google.Ads.Googleads.V4.Resources.Campaign.VanityPharma.t() | nil,
          selective_optimization:
            Google.Ads.Googleads.V4.Resources.Campaign.SelectiveOptimization.t() | nil,
          optimization_goal_setting:
            Google.Ads.Googleads.V4.Resources.Campaign.OptimizationGoalSetting.t() | nil,
          tracking_setting: Google.Ads.Googleads.V4.Resources.Campaign.TrackingSetting.t() | nil,
          payment_mode: Google.Ads.Googleads.V4.Enums.PaymentModeEnum.PaymentMode.t(),
          optimization_score: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct [
    :campaign_bidding_strategy,
    :resource_name,
    :id,
    :name,
    :status,
    :serving_status,
    :ad_serving_optimization_status,
    :advertising_channel_type,
    :advertising_channel_sub_type,
    :tracking_url_template,
    :url_custom_parameters,
    :real_time_bidding_setting,
    :network_settings,
    :hotel_setting,
    :dynamic_search_ads_setting,
    :shopping_setting,
    :targeting_setting,
    :geo_target_type_setting,
    :local_campaign_setting,
    :app_campaign_setting,
    :labels,
    :experiment_type,
    :base_campaign,
    :campaign_budget,
    :bidding_strategy_type,
    :start_date,
    :end_date,
    :final_url_suffix,
    :frequency_caps,
    :video_brand_safety_suitability,
    :vanity_pharma,
    :selective_optimization,
    :optimization_goal_setting,
    :tracking_setting,
    :payment_mode,
    :optimization_score
  ]

  oneof :campaign_bidding_strategy, 0
  field :resource_name, 1, type: :string
  field :id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue

  field :status, 5,
    type: Google.Ads.Googleads.V4.Enums.CampaignStatusEnum.CampaignStatus,
    enum: true

  field :serving_status, 21,
    type: Google.Ads.Googleads.V4.Enums.CampaignServingStatusEnum.CampaignServingStatus,
    enum: true

  field :ad_serving_optimization_status, 8,
    type:
      Google.Ads.Googleads.V4.Enums.AdServingOptimizationStatusEnum.AdServingOptimizationStatus,
    enum: true

  field :advertising_channel_type, 9,
    type: Google.Ads.Googleads.V4.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    enum: true

  field :advertising_channel_sub_type, 10,
    type: Google.Ads.Googleads.V4.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    enum: true

  field :tracking_url_template, 11, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 12,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CustomParameter

  field :real_time_bidding_setting, 39,
    type: Google.Ads.Googleads.V4.Common.RealTimeBiddingSetting

  field :network_settings, 14, type: Google.Ads.Googleads.V4.Resources.Campaign.NetworkSettings
  field :hotel_setting, 32, type: Google.Ads.Googleads.V4.Resources.Campaign.HotelSettingInfo

  field :dynamic_search_ads_setting, 33,
    type: Google.Ads.Googleads.V4.Resources.Campaign.DynamicSearchAdsSetting

  field :shopping_setting, 36, type: Google.Ads.Googleads.V4.Resources.Campaign.ShoppingSetting
  field :targeting_setting, 43, type: Google.Ads.Googleads.V4.Common.TargetingSetting

  field :geo_target_type_setting, 47,
    type: Google.Ads.Googleads.V4.Resources.Campaign.GeoTargetTypeSetting

  field :local_campaign_setting, 50,
    type: Google.Ads.Googleads.V4.Resources.Campaign.LocalCampaignSetting

  field :app_campaign_setting, 51,
    type: Google.Ads.Googleads.V4.Resources.Campaign.AppCampaignSetting

  field :labels, 53, repeated: true, type: Google.Protobuf.StringValue

  field :experiment_type, 17,
    type: Google.Ads.Googleads.V4.Enums.CampaignExperimentTypeEnum.CampaignExperimentType,
    enum: true

  field :base_campaign, 28, type: Google.Protobuf.StringValue
  field :campaign_budget, 6, type: Google.Protobuf.StringValue

  field :bidding_strategy_type, 22,
    type: Google.Ads.Googleads.V4.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true

  field :start_date, 19, type: Google.Protobuf.StringValue
  field :end_date, 20, type: Google.Protobuf.StringValue
  field :final_url_suffix, 38, type: Google.Protobuf.StringValue

  field :frequency_caps, 40,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.FrequencyCapEntry

  field :video_brand_safety_suitability, 42,
    type: Google.Ads.Googleads.V4.Enums.BrandSafetySuitabilityEnum.BrandSafetySuitability,
    enum: true

  field :vanity_pharma, 44, type: Google.Ads.Googleads.V4.Resources.Campaign.VanityPharma

  field :selective_optimization, 45,
    type: Google.Ads.Googleads.V4.Resources.Campaign.SelectiveOptimization

  field :optimization_goal_setting, 54,
    type: Google.Ads.Googleads.V4.Resources.Campaign.OptimizationGoalSetting

  field :tracking_setting, 46, type: Google.Ads.Googleads.V4.Resources.Campaign.TrackingSetting

  field :payment_mode, 52,
    type: Google.Ads.Googleads.V4.Enums.PaymentModeEnum.PaymentMode,
    enum: true

  field :optimization_score, 55, type: Google.Protobuf.DoubleValue
  field :bidding_strategy, 23, type: Google.Protobuf.StringValue, oneof: 0
  field :commission, 49, type: Google.Ads.Googleads.V4.Common.Commission, oneof: 0
  field :manual_cpc, 24, type: Google.Ads.Googleads.V4.Common.ManualCpc, oneof: 0
  field :manual_cpm, 25, type: Google.Ads.Googleads.V4.Common.ManualCpm, oneof: 0
  field :manual_cpv, 37, type: Google.Ads.Googleads.V4.Common.ManualCpv, oneof: 0

  field :maximize_conversions, 30,
    type: Google.Ads.Googleads.V4.Common.MaximizeConversions,
    oneof: 0

  field :maximize_conversion_value, 31,
    type: Google.Ads.Googleads.V4.Common.MaximizeConversionValue,
    oneof: 0

  field :target_cpa, 26, type: Google.Ads.Googleads.V4.Common.TargetCpa, oneof: 0

  field :target_impression_share, 48,
    type: Google.Ads.Googleads.V4.Common.TargetImpressionShare,
    oneof: 0

  field :target_roas, 29, type: Google.Ads.Googleads.V4.Common.TargetRoas, oneof: 0
  field :target_spend, 27, type: Google.Ads.Googleads.V4.Common.TargetSpend, oneof: 0
  field :percent_cpc, 34, type: Google.Ads.Googleads.V4.Common.PercentCpc, oneof: 0
  field :target_cpm, 41, type: Google.Ads.Googleads.V4.Common.TargetCpm, oneof: 0
end
