defmodule Google.Ads.Googleads.V4.Services.GetKeywordPlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateKeywordPlansRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V4.Services.KeywordPlanOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.KeywordPlan, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.KeywordPlan, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateKeywordPlansResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V4.Services.MutateKeywordPlansResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlansResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateKeywordPlansResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GenerateForecastCurveRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan: String.t()
        }

  defstruct [:keyword_plan]

  field :keyword_plan, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GenerateForecastCurveResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_forecast_curves: [
            Google.Ads.Googleads.V4.Services.KeywordPlanCampaignForecastCurve.t()
          ]
        }

  defstruct [:campaign_forecast_curves]

  field :campaign_forecast_curves, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanCampaignForecastCurve
end

defmodule Google.Ads.Googleads.V4.Services.GenerateForecastMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan: String.t()
        }

  defstruct [:keyword_plan]

  field :keyword_plan, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GenerateForecastMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_forecasts: [Google.Ads.Googleads.V4.Services.KeywordPlanCampaignForecast.t()],
          ad_group_forecasts: [Google.Ads.Googleads.V4.Services.KeywordPlanAdGroupForecast.t()],
          keyword_forecasts: [Google.Ads.Googleads.V4.Services.KeywordPlanKeywordForecast.t()]
        }

  defstruct [:campaign_forecasts, :ad_group_forecasts, :keyword_forecasts]

  field :campaign_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanCampaignForecast

  field :ad_group_forecasts, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanAdGroupForecast

  field :keyword_forecasts, 3,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanKeywordForecast
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanCampaignForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan_campaign: Google.Protobuf.StringValue.t() | nil,
          campaign_forecast: Google.Ads.Googleads.V4.Services.ForecastMetrics.t() | nil
        }

  defstruct [:keyword_plan_campaign, :campaign_forecast]

  field :keyword_plan_campaign, 1, type: Google.Protobuf.StringValue
  field :campaign_forecast, 2, type: Google.Ads.Googleads.V4.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanAdGroupForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan_ad_group: Google.Protobuf.StringValue.t() | nil,
          ad_group_forecast: Google.Ads.Googleads.V4.Services.ForecastMetrics.t() | nil
        }

  defstruct [:keyword_plan_ad_group, :ad_group_forecast]

  field :keyword_plan_ad_group, 1, type: Google.Protobuf.StringValue
  field :ad_group_forecast, 2, type: Google.Ads.Googleads.V4.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanKeywordForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan_ad_group_keyword: Google.Protobuf.StringValue.t() | nil,
          keyword_forecast: Google.Ads.Googleads.V4.Services.ForecastMetrics.t() | nil
        }

  defstruct [:keyword_plan_ad_group_keyword, :keyword_forecast]

  field :keyword_plan_ad_group_keyword, 1, type: Google.Protobuf.StringValue
  field :keyword_forecast, 2, type: Google.Ads.Googleads.V4.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanCampaignForecastCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan_campaign: Google.Protobuf.StringValue.t() | nil,
          max_cpc_bid_forecast_curve:
            Google.Ads.Googleads.V4.Services.KeywordPlanMaxCpcBidForecastCurve.t() | nil
        }

  defstruct [:keyword_plan_campaign, :max_cpc_bid_forecast_curve]

  field :keyword_plan_campaign, 1, type: Google.Protobuf.StringValue

  field :max_cpc_bid_forecast_curve, 2,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanMaxCpcBidForecastCurve
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanMaxCpcBidForecastCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_cpc_bid_forecasts: [
            Google.Ads.Googleads.V4.Services.KeywordPlanMaxCpcBidForecast.t()
          ]
        }

  defstruct [:max_cpc_bid_forecasts]

  field :max_cpc_bid_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanMaxCpcBidForecast
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanMaxCpcBidForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          max_cpc_bid_forecast: Google.Ads.Googleads.V4.Services.ForecastMetrics.t() | nil
        }

  defstruct [:max_cpc_bid_micros, :max_cpc_bid_forecast]

  field :max_cpc_bid_micros, 1, type: Google.Protobuf.Int64Value
  field :max_cpc_bid_forecast, 2, type: Google.Ads.Googleads.V4.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V4.Services.ForecastMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          impressions: Google.Protobuf.DoubleValue.t() | nil,
          ctr: Google.Protobuf.DoubleValue.t() | nil,
          average_cpc: Google.Protobuf.Int64Value.t() | nil,
          clicks: Google.Protobuf.DoubleValue.t() | nil,
          cost_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:impressions, :ctr, :average_cpc, :clicks, :cost_micros]

  field :impressions, 1, type: Google.Protobuf.DoubleValue
  field :ctr, 2, type: Google.Protobuf.DoubleValue
  field :average_cpc, 3, type: Google.Protobuf.Int64Value
  field :clicks, 5, type: Google.Protobuf.DoubleValue
  field :cost_micros, 6, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Services.GenerateHistoricalMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan: String.t()
        }

  defstruct [:keyword_plan]

  field :keyword_plan, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GenerateHistoricalMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metrics: [Google.Ads.Googleads.V4.Services.KeywordPlanKeywordHistoricalMetrics.t()]
        }

  defstruct [:metrics]

  field :metrics, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanKeywordHistoricalMetrics
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanKeywordHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          search_query: Google.Protobuf.StringValue.t() | nil,
          keyword_metrics: Google.Ads.Googleads.V4.Common.KeywordPlanHistoricalMetrics.t() | nil
        }

  defstruct [:search_query, :keyword_metrics]

  field :search_query, 1, type: Google.Protobuf.StringValue
  field :keyword_metrics, 2, type: Google.Ads.Googleads.V4.Common.KeywordPlanHistoricalMetrics
end
