defmodule Google.Ads.Googleads.V5.Services.ListPlannableLocationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V5.Services.ListPlannableLocationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_locations: [Google.Ads.Googleads.V5.Services.PlannableLocation.t()]
        }

  defstruct [:plannable_locations]

  field :plannable_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.PlannableLocation
end

defmodule Google.Ads.Googleads.V5.Services.PlannableLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: Google.Protobuf.StringValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          parent_country_id: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:id, :name, :parent_country_id]

  field :id, 1, type: Google.Protobuf.StringValue
  field :name, 2, type: Google.Protobuf.StringValue
  field :parent_country_id, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V5.Services.ListPlannableProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_location_id: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:plannable_location_id]

  field :plannable_location_id, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Services.ListPlannableProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_metadata: [Google.Ads.Googleads.V5.Services.ProductMetadata.t()]
        }

  defstruct [:product_metadata]

  field :product_metadata, 1,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.ProductMetadata
end

defmodule Google.Ads.Googleads.V5.Services.ProductMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: Google.Protobuf.StringValue.t() | nil,
          plannable_targeting: Google.Ads.Googleads.V5.Services.PlannableTargeting.t() | nil
        }

  defstruct [:plannable_product_code, :plannable_targeting]

  field :plannable_product_code, 1, type: Google.Protobuf.StringValue
  field :plannable_targeting, 2, type: Google.Ads.Googleads.V5.Services.PlannableTargeting
end

defmodule Google.Ads.Googleads.V5.Services.PlannableTargeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          age_ranges: [
            [Google.Ads.Googleads.V5.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange.t()]
          ],
          genders: [Google.Ads.Googleads.V5.Common.GenderInfo.t()],
          devices: [Google.Ads.Googleads.V5.Common.DeviceInfo.t()],
          networks: [[Google.Ads.Googleads.V5.Enums.ReachPlanNetworkEnum.ReachPlanNetwork.t()]]
        }

  defstruct [:age_ranges, :genders, :devices, :networks]

  field :age_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V5.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    enum: true

  field :genders, 2, repeated: true, type: Google.Ads.Googleads.V5.Common.GenderInfo
  field :devices, 3, repeated: true, type: Google.Ads.Googleads.V5.Common.DeviceInfo

  field :networks, 4,
    repeated: true,
    type: Google.Ads.Googleads.V5.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end

defmodule Google.Ads.Googleads.V5.Services.GenerateProductMixIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          plannable_location_id: Google.Protobuf.StringValue.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil,
          budget_micros: Google.Protobuf.Int64Value.t() | nil,
          preferences: Google.Ads.Googleads.V5.Services.Preferences.t() | nil
        }

  defstruct [:customer_id, :plannable_location_id, :currency_code, :budget_micros, :preferences]

  field :customer_id, 1, type: :string
  field :plannable_location_id, 2, type: Google.Protobuf.StringValue
  field :currency_code, 3, type: Google.Protobuf.StringValue
  field :budget_micros, 4, type: Google.Protobuf.Int64Value
  field :preferences, 5, type: Google.Ads.Googleads.V5.Services.Preferences
end

defmodule Google.Ads.Googleads.V5.Services.Preferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_skippable: Google.Protobuf.BoolValue.t() | nil,
          starts_with_sound: Google.Protobuf.BoolValue.t() | nil,
          ad_length: Google.Ads.Googleads.V5.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength.t(),
          top_content_only: Google.Protobuf.BoolValue.t() | nil,
          has_guaranteed_price: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :is_skippable,
    :starts_with_sound,
    :ad_length,
    :top_content_only,
    :has_guaranteed_price
  ]

  field :is_skippable, 1, type: Google.Protobuf.BoolValue
  field :starts_with_sound, 2, type: Google.Protobuf.BoolValue

  field :ad_length, 3,
    type: Google.Ads.Googleads.V5.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength,
    enum: true

  field :top_content_only, 4, type: Google.Protobuf.BoolValue
  field :has_guaranteed_price, 5, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V5.Services.GenerateProductMixIdeasResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_allocation: [Google.Ads.Googleads.V5.Services.ProductAllocation.t()]
        }

  defstruct [:product_allocation]

  field :product_allocation, 1,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.ProductAllocation
end

defmodule Google.Ads.Googleads.V5.Services.ProductAllocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: Google.Protobuf.StringValue.t() | nil,
          budget_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:plannable_product_code, :budget_micros]

  field :plannable_product_code, 1, type: Google.Protobuf.StringValue
  field :budget_micros, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V5.Services.GenerateReachForecastRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          currency_code: Google.Protobuf.StringValue.t() | nil,
          campaign_duration: Google.Ads.Googleads.V5.Services.CampaignDuration.t() | nil,
          cookie_frequency_cap: Google.Protobuf.Int32Value.t() | nil,
          cookie_frequency_cap_setting: Google.Ads.Googleads.V5.Services.FrequencyCap.t() | nil,
          min_effective_frequency: Google.Protobuf.Int32Value.t() | nil,
          targeting: Google.Ads.Googleads.V5.Services.Targeting.t() | nil,
          planned_products: [Google.Ads.Googleads.V5.Services.PlannedProduct.t()]
        }

  defstruct [
    :customer_id,
    :currency_code,
    :campaign_duration,
    :cookie_frequency_cap,
    :cookie_frequency_cap_setting,
    :min_effective_frequency,
    :targeting,
    :planned_products
  ]

  field :customer_id, 1, type: :string
  field :currency_code, 2, type: Google.Protobuf.StringValue
  field :campaign_duration, 3, type: Google.Ads.Googleads.V5.Services.CampaignDuration
  field :cookie_frequency_cap, 4, type: Google.Protobuf.Int32Value
  field :cookie_frequency_cap_setting, 8, type: Google.Ads.Googleads.V5.Services.FrequencyCap
  field :min_effective_frequency, 5, type: Google.Protobuf.Int32Value
  field :targeting, 6, type: Google.Ads.Googleads.V5.Services.Targeting

  field :planned_products, 7,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.PlannedProduct
end

defmodule Google.Ads.Googleads.V5.Services.FrequencyCap do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          impressions: Google.Protobuf.Int32Value.t() | nil,
          time_unit:
            Google.Ads.Googleads.V5.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit.t()
        }

  defstruct [:impressions, :time_unit]

  field :impressions, 1, type: Google.Protobuf.Int32Value

  field :time_unit, 2,
    type: Google.Ads.Googleads.V5.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    enum: true
end

defmodule Google.Ads.Googleads.V5.Services.Targeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_location_id: Google.Protobuf.StringValue.t() | nil,
          age_range: Google.Ads.Googleads.V5.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange.t(),
          genders: [Google.Ads.Googleads.V5.Common.GenderInfo.t()],
          devices: [Google.Ads.Googleads.V5.Common.DeviceInfo.t()],
          network: Google.Ads.Googleads.V5.Enums.ReachPlanNetworkEnum.ReachPlanNetwork.t()
        }

  defstruct [:plannable_location_id, :age_range, :genders, :devices, :network]

  field :plannable_location_id, 1, type: Google.Protobuf.StringValue

  field :age_range, 2,
    type: Google.Ads.Googleads.V5.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    enum: true

  field :genders, 3, repeated: true, type: Google.Ads.Googleads.V5.Common.GenderInfo
  field :devices, 4, repeated: true, type: Google.Ads.Googleads.V5.Common.DeviceInfo

  field :network, 5,
    type: Google.Ads.Googleads.V5.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end

defmodule Google.Ads.Googleads.V5.Services.CampaignDuration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration_in_days: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [:duration_in_days]

  field :duration_in_days, 1, type: Google.Protobuf.Int32Value
end

defmodule Google.Ads.Googleads.V5.Services.PlannedProduct do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: Google.Protobuf.StringValue.t() | nil,
          budget_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:plannable_product_code, :budget_micros]

  field :plannable_product_code, 1, type: Google.Protobuf.StringValue
  field :budget_micros, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V5.Services.GenerateReachForecastResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_audience_metrics:
            Google.Ads.Googleads.V5.Services.OnTargetAudienceMetrics.t() | nil,
          reach_curve: Google.Ads.Googleads.V5.Services.ReachCurve.t() | nil
        }

  defstruct [:on_target_audience_metrics, :reach_curve]

  field :on_target_audience_metrics, 1,
    type: Google.Ads.Googleads.V5.Services.OnTargetAudienceMetrics

  field :reach_curve, 2, type: Google.Ads.Googleads.V5.Services.ReachCurve
end

defmodule Google.Ads.Googleads.V5.Services.ReachCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reach_forecasts: [Google.Ads.Googleads.V5.Services.ReachForecast.t()]
        }

  defstruct [:reach_forecasts]

  field :reach_forecasts, 1, repeated: true, type: Google.Ads.Googleads.V5.Services.ReachForecast
end

defmodule Google.Ads.Googleads.V5.Services.ReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cost_micros: Google.Protobuf.Int64Value.t() | nil,
          forecast: Google.Ads.Googleads.V5.Services.Forecast.t() | nil,
          forecasted_product_allocations: [Google.Ads.Googleads.V5.Services.ProductAllocation.t()]
        }

  defstruct [:cost_micros, :forecast, :forecasted_product_allocations]

  field :cost_micros, 1, type: Google.Protobuf.Int64Value
  field :forecast, 2, type: Google.Ads.Googleads.V5.Services.Forecast

  field :forecasted_product_allocations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.ProductAllocation
end

defmodule Google.Ads.Googleads.V5.Services.Forecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_reach: Google.Protobuf.Int64Value.t() | nil,
          total_reach: Google.Protobuf.Int64Value.t() | nil,
          on_target_impressions: Google.Protobuf.Int64Value.t() | nil,
          total_impressions: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:on_target_reach, :total_reach, :on_target_impressions, :total_impressions]

  field :on_target_reach, 1, type: Google.Protobuf.Int64Value
  field :total_reach, 2, type: Google.Protobuf.Int64Value
  field :on_target_impressions, 3, type: Google.Protobuf.Int64Value
  field :total_impressions, 4, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V5.Services.OnTargetAudienceMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          youtube_audience_size: Google.Protobuf.Int64Value.t() | nil,
          census_audience_size: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:youtube_audience_size, :census_audience_size]

  field :youtube_audience_size, 1, type: Google.Protobuf.Int64Value
  field :census_audience_size, 2, type: Google.Protobuf.Int64Value
end
