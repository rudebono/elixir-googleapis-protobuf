defmodule Google.Ads.Googleads.V10.Services.ListPlannableLocationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V10.Services.ListPlannableLocationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :plannable_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.PlannableLocation,
    json_name: "plannableLocations"
end

defmodule Google.Ads.Googleads.V10.Services.PlannableLocation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 4, proto3_optional: true, type: :string
  field :name, 5, proto3_optional: true, type: :string
  field :parent_country_id, 6, proto3_optional: true, type: :int64, json_name: "parentCountryId"
  field :country_code, 7, proto3_optional: true, type: :string, json_name: "countryCode"
  field :location_type, 8, proto3_optional: true, type: :string, json_name: "locationType"
end

defmodule Google.Ads.Googleads.V10.Services.ListPlannableProductsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :plannable_location_id, 2,
    type: :string,
    json_name: "plannableLocationId",
    deprecated: false
end

defmodule Google.Ads.Googleads.V10.Services.ListPlannableProductsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :product_metadata, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.ProductMetadata,
    json_name: "productMetadata"
end

defmodule Google.Ads.Googleads.V10.Services.ProductMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :plannable_product_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "plannableProductCode"

  field :plannable_product_name, 3, type: :string, json_name: "plannableProductName"

  field :plannable_targeting, 2,
    type: Google.Ads.Googleads.V10.Services.PlannableTargeting,
    json_name: "plannableTargeting"
end

defmodule Google.Ads.Googleads.V10.Services.PlannableTargeting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :age_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    json_name: "ageRanges",
    enum: true

  field :genders, 2, repeated: true, type: Google.Ads.Googleads.V10.Common.GenderInfo
  field :devices, 3, repeated: true, type: Google.Ads.Googleads.V10.Common.DeviceInfo

  field :networks, 4,
    repeated: true,
    type: Google.Ads.Googleads.V10.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Services.GenerateProductMixIdeasRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :plannable_location_id, 6,
    type: :string,
    json_name: "plannableLocationId",
    deprecated: false

  field :currency_code, 7, type: :string, json_name: "currencyCode", deprecated: false
  field :budget_micros, 8, type: :int64, json_name: "budgetMicros", deprecated: false
  field :preferences, 5, type: Google.Ads.Googleads.V10.Services.Preferences
end

defmodule Google.Ads.Googleads.V10.Services.Preferences do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :is_skippable, 6, proto3_optional: true, type: :bool, json_name: "isSkippable"
  field :starts_with_sound, 7, proto3_optional: true, type: :bool, json_name: "startsWithSound"

  field :ad_length, 3,
    type: Google.Ads.Googleads.V10.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength,
    json_name: "adLength",
    enum: true

  field :top_content_only, 8, proto3_optional: true, type: :bool, json_name: "topContentOnly"

  field :has_guaranteed_price, 9,
    proto3_optional: true,
    type: :bool,
    json_name: "hasGuaranteedPrice"
end

defmodule Google.Ads.Googleads.V10.Services.GenerateProductMixIdeasResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :product_allocation, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.ProductAllocation,
    json_name: "productAllocation"
end

defmodule Google.Ads.Googleads.V10.Services.ProductAllocation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :plannable_product_code, 3,
    proto3_optional: true,
    type: :string,
    json_name: "plannableProductCode"

  field :budget_micros, 4, proto3_optional: true, type: :int64, json_name: "budgetMicros"
end

defmodule Google.Ads.Googleads.V10.Services.GenerateReachForecastRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :currency_code, 9, proto3_optional: true, type: :string, json_name: "currencyCode"

  field :campaign_duration, 3,
    type: Google.Ads.Googleads.V10.Services.CampaignDuration,
    json_name: "campaignDuration",
    deprecated: false

  field :cookie_frequency_cap, 10,
    proto3_optional: true,
    type: :int32,
    json_name: "cookieFrequencyCap"

  field :cookie_frequency_cap_setting, 8,
    type: Google.Ads.Googleads.V10.Services.FrequencyCap,
    json_name: "cookieFrequencyCapSetting"

  field :min_effective_frequency, 11,
    proto3_optional: true,
    type: :int32,
    json_name: "minEffectiveFrequency"

  field :effective_frequency_limit, 12,
    proto3_optional: true,
    type: Google.Ads.Googleads.V10.Services.EffectiveFrequencyLimit,
    json_name: "effectiveFrequencyLimit"

  field :targeting, 6, type: Google.Ads.Googleads.V10.Services.Targeting

  field :planned_products, 7,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.PlannedProduct,
    json_name: "plannedProducts",
    deprecated: false
end

defmodule Google.Ads.Googleads.V10.Services.EffectiveFrequencyLimit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :effective_frequency_breakdown_limit, 1,
    type: :int32,
    json_name: "effectiveFrequencyBreakdownLimit"
end

defmodule Google.Ads.Googleads.V10.Services.FrequencyCap do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :impressions, 3, type: :int32, deprecated: false

  field :time_unit, 2,
    type: Google.Ads.Googleads.V10.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    json_name: "timeUnit",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V10.Services.Targeting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :plannable_location_id, 6,
    proto3_optional: true,
    type: :string,
    json_name: "plannableLocationId"

  field :age_range, 2,
    type: Google.Ads.Googleads.V10.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    json_name: "ageRange",
    enum: true

  field :genders, 3, repeated: true, type: Google.Ads.Googleads.V10.Common.GenderInfo
  field :devices, 4, repeated: true, type: Google.Ads.Googleads.V10.Common.DeviceInfo

  field :network, 5,
    type: Google.Ads.Googleads.V10.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end

defmodule Google.Ads.Googleads.V10.Services.CampaignDuration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :duration_in_days, 2, proto3_optional: true, type: :int32, json_name: "durationInDays"
  field :date_range, 3, type: Google.Ads.Googleads.V10.Common.DateRange, json_name: "dateRange"
end

defmodule Google.Ads.Googleads.V10.Services.PlannedProduct do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :plannable_product_code, 3,
    proto3_optional: true,
    type: :string,
    json_name: "plannableProductCode"

  field :budget_micros, 4, proto3_optional: true, type: :int64, json_name: "budgetMicros"
end

defmodule Google.Ads.Googleads.V10.Services.GenerateReachForecastResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :on_target_audience_metrics, 1,
    type: Google.Ads.Googleads.V10.Services.OnTargetAudienceMetrics,
    json_name: "onTargetAudienceMetrics"

  field :reach_curve, 2,
    type: Google.Ads.Googleads.V10.Services.ReachCurve,
    json_name: "reachCurve"
end

defmodule Google.Ads.Googleads.V10.Services.ReachCurve do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reach_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.ReachForecast,
    json_name: "reachForecasts"
end

defmodule Google.Ads.Googleads.V10.Services.ReachForecast do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cost_micros, 5, type: :int64, json_name: "costMicros"
  field :forecast, 2, type: Google.Ads.Googleads.V10.Services.Forecast

  field :planned_product_reach_forecasts, 4,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.PlannedProductReachForecast,
    json_name: "plannedProductReachForecasts"
end

defmodule Google.Ads.Googleads.V10.Services.Forecast do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
    type: Google.Ads.Googleads.V10.Services.EffectiveFrequencyBreakdown,
    json_name: "effectiveFrequencyBreakdowns"
end

defmodule Google.Ads.Googleads.V10.Services.PlannedProductReachForecast do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :plannable_product_code, 1, type: :string, json_name: "plannableProductCode"
  field :cost_micros, 2, type: :int64, json_name: "costMicros"

  field :planned_product_forecast, 3,
    type: Google.Ads.Googleads.V10.Services.PlannedProductForecast,
    json_name: "plannedProductForecast"
end

defmodule Google.Ads.Googleads.V10.Services.PlannedProductForecast do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :on_target_reach, 1, type: :int64, json_name: "onTargetReach"
  field :total_reach, 2, type: :int64, json_name: "totalReach"
  field :on_target_impressions, 3, type: :int64, json_name: "onTargetImpressions"
  field :total_impressions, 4, type: :int64, json_name: "totalImpressions"

  field :viewable_impressions, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "viewableImpressions"
end

defmodule Google.Ads.Googleads.V10.Services.OnTargetAudienceMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :youtube_audience_size, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "youtubeAudienceSize"

  field :census_audience_size, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "censusAudienceSize"
end

defmodule Google.Ads.Googleads.V10.Services.EffectiveFrequencyBreakdown do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :effective_frequency, 1, type: :int32, json_name: "effectiveFrequency"
  field :on_target_reach, 2, type: :int64, json_name: "onTargetReach"
  field :total_reach, 3, type: :int64, json_name: "totalReach"
end

defmodule Google.Ads.Googleads.V10.Services.ReachPlanService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v10.services.ReachPlanService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListPlannableLocations,
      Google.Ads.Googleads.V10.Services.ListPlannableLocationsRequest,
      Google.Ads.Googleads.V10.Services.ListPlannableLocationsResponse

  rpc :ListPlannableProducts,
      Google.Ads.Googleads.V10.Services.ListPlannableProductsRequest,
      Google.Ads.Googleads.V10.Services.ListPlannableProductsResponse

  rpc :GenerateProductMixIdeas,
      Google.Ads.Googleads.V10.Services.GenerateProductMixIdeasRequest,
      Google.Ads.Googleads.V10.Services.GenerateProductMixIdeasResponse

  rpc :GenerateReachForecast,
      Google.Ads.Googleads.V10.Services.GenerateReachForecastRequest,
      Google.Ads.Googleads.V10.Services.GenerateReachForecastResponse
end

defmodule Google.Ads.Googleads.V10.Services.ReachPlanService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.ReachPlanService.Service
end