defmodule Google.Ads.Googleads.V12.Services.MutateKeywordPlansRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.KeywordPlanOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V12.Resources.KeywordPlan, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V12.Resources.KeywordPlan, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V12.Services.MutateKeywordPlansResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.MutateKeywordPlansResult
end

defmodule Google.Ads.Googleads.V12.Services.MutateKeywordPlansResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V12.Services.GenerateForecastCurveRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword_plan, 1, type: :string, json_name: "keywordPlan", deprecated: false
end

defmodule Google.Ads.Googleads.V12.Services.GenerateForecastCurveResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :campaign_forecast_curves, 1,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.KeywordPlanCampaignForecastCurve,
    json_name: "campaignForecastCurves"
end

defmodule Google.Ads.Googleads.V12.Services.GenerateForecastTimeSeriesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword_plan, 1, type: :string, json_name: "keywordPlan", deprecated: false
end

defmodule Google.Ads.Googleads.V12.Services.GenerateForecastTimeSeriesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :weekly_time_series_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.KeywordPlanWeeklyTimeSeriesForecast,
    json_name: "weeklyTimeSeriesForecasts"
end

defmodule Google.Ads.Googleads.V12.Services.GenerateForecastMetricsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword_plan, 1, type: :string, json_name: "keywordPlan", deprecated: false
end

defmodule Google.Ads.Googleads.V12.Services.GenerateForecastMetricsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :campaign_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.KeywordPlanCampaignForecast,
    json_name: "campaignForecasts"

  field :ad_group_forecasts, 2,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.KeywordPlanAdGroupForecast,
    json_name: "adGroupForecasts"

  field :keyword_forecasts, 3,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.KeywordPlanKeywordForecast,
    json_name: "keywordForecasts"
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanCampaignForecast do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword_plan_campaign, 3,
    proto3_optional: true,
    type: :string,
    json_name: "keywordPlanCampaign"

  field :campaign_forecast, 2,
    type: Google.Ads.Googleads.V12.Services.ForecastMetrics,
    json_name: "campaignForecast"
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanAdGroupForecast do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword_plan_ad_group, 3,
    proto3_optional: true,
    type: :string,
    json_name: "keywordPlanAdGroup"

  field :ad_group_forecast, 2,
    type: Google.Ads.Googleads.V12.Services.ForecastMetrics,
    json_name: "adGroupForecast"
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanKeywordForecast do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword_plan_ad_group_keyword, 3,
    proto3_optional: true,
    type: :string,
    json_name: "keywordPlanAdGroupKeyword"

  field :keyword_forecast, 2,
    type: Google.Ads.Googleads.V12.Services.ForecastMetrics,
    json_name: "keywordForecast"
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanCampaignForecastCurve do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword_plan_campaign, 3,
    proto3_optional: true,
    type: :string,
    json_name: "keywordPlanCampaign"

  field :max_cpc_bid_forecast_curve, 2,
    type: Google.Ads.Googleads.V12.Services.KeywordPlanMaxCpcBidForecastCurve,
    json_name: "maxCpcBidForecastCurve"
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanMaxCpcBidForecastCurve do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_cpc_bid_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.KeywordPlanMaxCpcBidForecast,
    json_name: "maxCpcBidForecasts"
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanMaxCpcBidForecast do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_cpc_bid_micros, 3, proto3_optional: true, type: :int64, json_name: "maxCpcBidMicros"

  field :max_cpc_bid_forecast, 2,
    type: Google.Ads.Googleads.V12.Services.ForecastMetrics,
    json_name: "maxCpcBidForecast"
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanWeeklyTimeSeriesForecast do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword_plan_campaign, 1,
    proto3_optional: true,
    type: :string,
    json_name: "keywordPlanCampaign"

  field :weekly_forecasts, 2,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.KeywordPlanWeeklyForecast,
    json_name: "weeklyForecasts"
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanWeeklyForecast do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start_date, 1, proto3_optional: true, type: :string, json_name: "startDate"
  field :forecast, 2, type: Google.Ads.Googleads.V12.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V12.Services.ForecastMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :impressions, 7, proto3_optional: true, type: :double
  field :ctr, 8, proto3_optional: true, type: :double
  field :average_cpc, 9, proto3_optional: true, type: :int64, json_name: "averageCpc"
  field :clicks, 10, proto3_optional: true, type: :double
  field :cost_micros, 11, proto3_optional: true, type: :int64, json_name: "costMicros"
end

defmodule Google.Ads.Googleads.V12.Services.GenerateHistoricalMetricsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword_plan, 1, type: :string, json_name: "keywordPlan", deprecated: false

  field :aggregate_metrics, 2,
    type: Google.Ads.Googleads.V12.Common.KeywordPlanAggregateMetrics,
    json_name: "aggregateMetrics"

  field :historical_metrics_options, 3,
    type: Google.Ads.Googleads.V12.Common.HistoricalMetricsOptions,
    json_name: "historicalMetricsOptions"
end

defmodule Google.Ads.Googleads.V12.Services.GenerateHistoricalMetricsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metrics, 1,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.KeywordPlanKeywordHistoricalMetrics

  field :aggregate_metric_results, 2,
    type: Google.Ads.Googleads.V12.Common.KeywordPlanAggregateMetricResults,
    json_name: "aggregateMetricResults"
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanKeywordHistoricalMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :search_query, 4, proto3_optional: true, type: :string, json_name: "searchQuery"
  field :close_variants, 3, repeated: true, type: :string, json_name: "closeVariants"

  field :keyword_metrics, 2,
    type: Google.Ads.Googleads.V12.Common.KeywordPlanHistoricalMetrics,
    json_name: "keywordMetrics"
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v12.services.KeywordPlanService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :MutateKeywordPlans,
      Google.Ads.Googleads.V12.Services.MutateKeywordPlansRequest,
      Google.Ads.Googleads.V12.Services.MutateKeywordPlansResponse

  rpc :GenerateForecastCurve,
      Google.Ads.Googleads.V12.Services.GenerateForecastCurveRequest,
      Google.Ads.Googleads.V12.Services.GenerateForecastCurveResponse

  rpc :GenerateForecastTimeSeries,
      Google.Ads.Googleads.V12.Services.GenerateForecastTimeSeriesRequest,
      Google.Ads.Googleads.V12.Services.GenerateForecastTimeSeriesResponse

  rpc :GenerateForecastMetrics,
      Google.Ads.Googleads.V12.Services.GenerateForecastMetricsRequest,
      Google.Ads.Googleads.V12.Services.GenerateForecastMetricsResponse

  rpc :GenerateHistoricalMetrics,
      Google.Ads.Googleads.V12.Services.GenerateHistoricalMetricsRequest,
      Google.Ads.Googleads.V12.Services.GenerateHistoricalMetricsResponse
end

defmodule Google.Ads.Googleads.V12.Services.KeywordPlanService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V12.Services.KeywordPlanService.Service
end