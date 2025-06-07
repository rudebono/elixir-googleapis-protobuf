defmodule Google.Ads.Googleads.V20.Services.GenerateConversionRatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :customer_reach_group, 2,
    proto3_optional: true,
    type: :string,
    json_name: "customerReachGroup"

  field :reach_application_info, 3,
    type: Google.Ads.Googleads.V20.Common.AdditionalApplicationInfo,
    json_name: "reachApplicationInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.GenerateConversionRatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversion_rate_suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.ConversionRateSuggestion,
    json_name: "conversionRateSuggestions"
end

defmodule Google.Ads.Googleads.V20.Services.ConversionRateSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversion_rate_model, 1,
    type:
      Google.Ads.Googleads.V20.Enums.ReachPlanConversionRateModelEnum.ReachPlanConversionRateModel,
    json_name: "conversionRateModel",
    enum: true

  field :plannable_product_code, 2, type: :string, json_name: "plannableProductCode"
  field :conversion_rate, 3, type: :double, json_name: "conversionRate"
end

defmodule Google.Ads.Googleads.V20.Services.ListPlannableLocationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reach_application_info, 1,
    type: Google.Ads.Googleads.V20.Common.AdditionalApplicationInfo,
    json_name: "reachApplicationInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.ListPlannableLocationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :plannable_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.PlannableLocation,
    json_name: "plannableLocations"
end

defmodule Google.Ads.Googleads.V20.Services.PlannableLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 4, proto3_optional: true, type: :string
  field :name, 5, proto3_optional: true, type: :string
  field :parent_country_id, 6, proto3_optional: true, type: :int64, json_name: "parentCountryId"
  field :country_code, 7, proto3_optional: true, type: :string, json_name: "countryCode"
  field :location_type, 8, proto3_optional: true, type: :string, json_name: "locationType"
end

defmodule Google.Ads.Googleads.V20.Services.ListPlannableProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :plannable_location_id, 2,
    type: :string,
    json_name: "plannableLocationId",
    deprecated: false

  field :reach_application_info, 3,
    type: Google.Ads.Googleads.V20.Common.AdditionalApplicationInfo,
    json_name: "reachApplicationInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.ListPlannableProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :product_metadata, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.ProductMetadata,
    json_name: "productMetadata"
end

defmodule Google.Ads.Googleads.V20.Services.ProductMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :plannable_product_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "plannableProductCode"

  field :plannable_product_name, 3, type: :string, json_name: "plannableProductName"

  field :plannable_targeting, 2,
    type: Google.Ads.Googleads.V20.Services.PlannableTargeting,
    json_name: "plannableTargeting"
end

defmodule Google.Ads.Googleads.V20.Services.ListPlannableUserListsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :customer_reach_group, 2,
    proto3_optional: true,
    type: :string,
    json_name: "customerReachGroup"
end

defmodule Google.Ads.Googleads.V20.Services.ListPlannableUserListsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :plannable_user_lists, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.PlannableUserList,
    json_name: "plannableUserLists"
end

defmodule Google.Ads.Googleads.V20.Services.PlannableUserList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_list_info, 1,
    type: Google.Ads.Googleads.V20.Common.UserListInfo,
    json_name: "userListInfo"

  field :display_name, 2, type: :string, json_name: "displayName"

  field :user_list_type, 3,
    type: Google.Ads.Googleads.V20.Enums.UserListTypeEnum.UserListType,
    json_name: "userListType",
    enum: true

  field :plannable_status, 4,
    type:
      Google.Ads.Googleads.V20.Enums.ReachPlanPlannableUserListStatusEnum.ReachPlanPlannableUserListStatus,
    json_name: "plannableStatus",
    enum: true
end

defmodule Google.Ads.Googleads.V20.Services.PlannableTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :age_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    json_name: "ageRanges",
    enum: true

  field :genders, 2, repeated: true, type: Google.Ads.Googleads.V20.Common.GenderInfo
  field :devices, 3, repeated: true, type: Google.Ads.Googleads.V20.Common.DeviceInfo

  field :networks, 4,
    repeated: true,
    type: Google.Ads.Googleads.V20.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true

  field :youtube_select_lineups, 5,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.YouTubeSelectLineUp,
    json_name: "youtubeSelectLineups"

  field :surface_targeting, 6,
    type: Google.Ads.Googleads.V20.Services.SurfaceTargetingCombinations,
    json_name: "surfaceTargeting"
end

defmodule Google.Ads.Googleads.V20.Services.GenerateReachForecastRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :currency_code, 9, proto3_optional: true, type: :string, json_name: "currencyCode"

  field :campaign_duration, 3,
    type: Google.Ads.Googleads.V20.Services.CampaignDuration,
    json_name: "campaignDuration",
    deprecated: false

  field :cookie_frequency_cap, 10,
    proto3_optional: true,
    type: :int32,
    json_name: "cookieFrequencyCap"

  field :cookie_frequency_cap_setting, 8,
    type: Google.Ads.Googleads.V20.Services.FrequencyCap,
    json_name: "cookieFrequencyCapSetting"

  field :min_effective_frequency, 11,
    proto3_optional: true,
    type: :int32,
    json_name: "minEffectiveFrequency"

  field :effective_frequency_limit, 12,
    proto3_optional: true,
    type: Google.Ads.Googleads.V20.Services.EffectiveFrequencyLimit,
    json_name: "effectiveFrequencyLimit"

  field :targeting, 6, type: Google.Ads.Googleads.V20.Services.Targeting

  field :planned_products, 7,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.PlannedProduct,
    json_name: "plannedProducts",
    deprecated: false

  field :forecast_metric_options, 13,
    type: Google.Ads.Googleads.V20.Services.ForecastMetricOptions,
    json_name: "forecastMetricOptions"

  field :customer_reach_group, 14,
    proto3_optional: true,
    type: :string,
    json_name: "customerReachGroup"

  field :reach_application_info, 15,
    type: Google.Ads.Googleads.V20.Common.AdditionalApplicationInfo,
    json_name: "reachApplicationInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.EffectiveFrequencyLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :effective_frequency_breakdown_limit, 1,
    type: :int32,
    json_name: "effectiveFrequencyBreakdownLimit"
end

defmodule Google.Ads.Googleads.V20.Services.FrequencyCap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :impressions, 3, type: :int32, deprecated: false

  field :time_unit, 2,
    type: Google.Ads.Googleads.V20.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    json_name: "timeUnit",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.Targeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :plannable_location_id, 6,
    proto3_optional: true,
    type: :string,
    json_name: "plannableLocationId"

  field :plannable_location_ids, 8,
    repeated: true,
    type: :string,
    json_name: "plannableLocationIds"

  field :age_range, 2,
    type: Google.Ads.Googleads.V20.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    json_name: "ageRange",
    enum: true

  field :genders, 3, repeated: true, type: Google.Ads.Googleads.V20.Common.GenderInfo
  field :devices, 4, repeated: true, type: Google.Ads.Googleads.V20.Common.DeviceInfo

  field :network, 5,
    type: Google.Ads.Googleads.V20.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true

  field :audience_targeting, 7,
    type: Google.Ads.Googleads.V20.Services.AudienceTargeting,
    json_name: "audienceTargeting"
end

defmodule Google.Ads.Googleads.V20.Services.CampaignDuration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :duration_in_days, 2, proto3_optional: true, type: :int32, json_name: "durationInDays"
  field :date_range, 3, type: Google.Ads.Googleads.V20.Common.DateRange, json_name: "dateRange"
end

defmodule Google.Ads.Googleads.V20.Services.PlannedProduct do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :plannable_product_code, 3,
    proto3_optional: true,
    type: :string,
    json_name: "plannableProductCode",
    deprecated: false

  field :budget_micros, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "budgetMicros",
    deprecated: false

  field :conversion_rate, 6, proto3_optional: true, type: :double, json_name: "conversionRate"

  field :advanced_product_targeting, 5,
    type: Google.Ads.Googleads.V20.Services.AdvancedProductTargeting,
    json_name: "advancedProductTargeting"
end

defmodule Google.Ads.Googleads.V20.Services.GenerateReachForecastResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :on_target_audience_metrics, 1,
    type: Google.Ads.Googleads.V20.Services.OnTargetAudienceMetrics,
    json_name: "onTargetAudienceMetrics"

  field :reach_curve, 2,
    type: Google.Ads.Googleads.V20.Services.ReachCurve,
    json_name: "reachCurve"
end

defmodule Google.Ads.Googleads.V20.Services.ReachCurve do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reach_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.ReachForecast,
    json_name: "reachForecasts"
end

defmodule Google.Ads.Googleads.V20.Services.ReachForecast do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cost_micros, 5, type: :int64, json_name: "costMicros"
  field :forecast, 2, type: Google.Ads.Googleads.V20.Services.Forecast

  field :planned_product_reach_forecasts, 4,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.PlannedProductReachForecast,
    json_name: "plannedProductReachForecasts"
end

defmodule Google.Ads.Googleads.V20.Services.Forecast do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :on_target_reach, 5, proto3_optional: true, type: :int64, json_name: "onTargetReach"
  field :total_reach, 6, proto3_optional: true, type: :int64, json_name: "totalReach"

  field :on_target_impressions, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "onTargetImpressions"

  field :total_impressions, 8, proto3_optional: true, type: :int64, json_name: "totalImpressions"

  field :viewable_impressions, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "viewableImpressions"

  field :effective_frequency_breakdowns, 10,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.EffectiveFrequencyBreakdown,
    json_name: "effectiveFrequencyBreakdowns"

  field :on_target_coview_reach, 11,
    proto3_optional: true,
    type: :int64,
    json_name: "onTargetCoviewReach"

  field :total_coview_reach, 12,
    proto3_optional: true,
    type: :int64,
    json_name: "totalCoviewReach"

  field :on_target_coview_impressions, 13,
    proto3_optional: true,
    type: :int64,
    json_name: "onTargetCoviewImpressions"

  field :total_coview_impressions, 14,
    proto3_optional: true,
    type: :int64,
    json_name: "totalCoviewImpressions"

  field :views, 15, proto3_optional: true, type: :int64
  field :conversions, 16, proto3_optional: true, type: :double
end

defmodule Google.Ads.Googleads.V20.Services.PlannedProductReachForecast do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :plannable_product_code, 1, type: :string, json_name: "plannableProductCode"
  field :cost_micros, 2, type: :int64, json_name: "costMicros"

  field :planned_product_forecast, 3,
    type: Google.Ads.Googleads.V20.Services.PlannedProductForecast,
    json_name: "plannedProductForecast"
end

defmodule Google.Ads.Googleads.V20.Services.PlannedProductForecast do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :on_target_reach, 1, type: :int64, json_name: "onTargetReach"
  field :total_reach, 2, type: :int64, json_name: "totalReach"
  field :on_target_impressions, 3, type: :int64, json_name: "onTargetImpressions"
  field :total_impressions, 4, type: :int64, json_name: "totalImpressions"

  field :viewable_impressions, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "viewableImpressions"

  field :on_target_coview_reach, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "onTargetCoviewReach"

  field :total_coview_reach, 7, proto3_optional: true, type: :int64, json_name: "totalCoviewReach"

  field :on_target_coview_impressions, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "onTargetCoviewImpressions"

  field :total_coview_impressions, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "totalCoviewImpressions"

  field :average_frequency, 10,
    proto3_optional: true,
    type: :double,
    json_name: "averageFrequency"

  field :views, 11, proto3_optional: true, type: :int64
  field :conversions, 12, proto3_optional: true, type: :double
end

defmodule Google.Ads.Googleads.V20.Services.OnTargetAudienceMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :youtube_audience_size, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "youtubeAudienceSize"

  field :census_audience_size, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "censusAudienceSize"
end

defmodule Google.Ads.Googleads.V20.Services.EffectiveFrequencyBreakdown do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :effective_frequency, 1, type: :int32, json_name: "effectiveFrequency"
  field :on_target_reach, 2, type: :int64, json_name: "onTargetReach"
  field :total_reach, 3, type: :int64, json_name: "totalReach"

  field :effective_coview_reach, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "effectiveCoviewReach"

  field :on_target_effective_coview_reach, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "onTargetEffectiveCoviewReach"
end

defmodule Google.Ads.Googleads.V20.Services.ForecastMetricOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :include_coview, 1, type: :bool, json_name: "includeCoview"
end

defmodule Google.Ads.Googleads.V20.Services.AudienceTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_interest, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Common.UserInterestInfo,
    json_name: "userInterest"

  field :user_lists, 2,
    repeated: true,
    type: Google.Ads.Googleads.V20.Common.UserListInfo,
    json_name: "userLists"
end

defmodule Google.Ads.Googleads.V20.Services.AdvancedProductTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :advanced_targeting, 0

  field :surface_targeting_settings, 2,
    type: Google.Ads.Googleads.V20.Services.SurfaceTargeting,
    json_name: "surfaceTargetingSettings"

  field :target_frequency_settings, 3,
    type: Google.Ads.Googleads.V20.Services.TargetFrequencySettings,
    json_name: "targetFrequencySettings"

  field :youtube_select_settings, 1,
    type: Google.Ads.Googleads.V20.Services.YouTubeSelectSettings,
    json_name: "youtubeSelectSettings",
    oneof: 0
end

defmodule Google.Ads.Googleads.V20.Services.YouTubeSelectSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lineup_id, 1, type: :int64, json_name: "lineupId"
end

defmodule Google.Ads.Googleads.V20.Services.YouTubeSelectLineUp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lineup_id, 1, type: :int64, json_name: "lineupId"
  field :lineup_name, 2, type: :string, json_name: "lineupName"
end

defmodule Google.Ads.Googleads.V20.Services.SurfaceTargetingCombinations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :default_targeting, 1,
    type: Google.Ads.Googleads.V20.Services.SurfaceTargeting,
    json_name: "defaultTargeting"

  field :available_targeting_combinations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.SurfaceTargeting,
    json_name: "availableTargetingCombinations"
end

defmodule Google.Ads.Googleads.V20.Services.SurfaceTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :surfaces, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Enums.ReachPlanSurfaceEnum.ReachPlanSurface,
    enum: true
end

defmodule Google.Ads.Googleads.V20.Services.TargetFrequencySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :time_unit, 1,
    type: Google.Ads.Googleads.V20.Enums.TargetFrequencyTimeUnitEnum.TargetFrequencyTimeUnit,
    json_name: "timeUnit",
    enum: true,
    deprecated: false

  field :target_frequency, 2, type: :int32, json_name: "targetFrequency", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.ReachPlanService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v20.services.ReachPlanService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GenerateConversionRates,
      Google.Ads.Googleads.V20.Services.GenerateConversionRatesRequest,
      Google.Ads.Googleads.V20.Services.GenerateConversionRatesResponse

  rpc :ListPlannableLocations,
      Google.Ads.Googleads.V20.Services.ListPlannableLocationsRequest,
      Google.Ads.Googleads.V20.Services.ListPlannableLocationsResponse

  rpc :ListPlannableProducts,
      Google.Ads.Googleads.V20.Services.ListPlannableProductsRequest,
      Google.Ads.Googleads.V20.Services.ListPlannableProductsResponse

  rpc :GenerateReachForecast,
      Google.Ads.Googleads.V20.Services.GenerateReachForecastRequest,
      Google.Ads.Googleads.V20.Services.GenerateReachForecastResponse

  rpc :ListPlannableUserLists,
      Google.Ads.Googleads.V20.Services.ListPlannableUserListsRequest,
      Google.Ads.Googleads.V20.Services.ListPlannableUserListsResponse
end

defmodule Google.Ads.Googleads.V20.Services.ReachPlanService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V20.Services.ReachPlanService.Service
end
