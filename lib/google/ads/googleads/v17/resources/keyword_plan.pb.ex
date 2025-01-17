defmodule Google.Ads.Googleads.V17.Resources.KeywordPlan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 5, proto3_optional: true, type: :int64, deprecated: false
  field :name, 6, proto3_optional: true, type: :string

  field :forecast_period, 4,
    type: Google.Ads.Googleads.V17.Resources.KeywordPlanForecastPeriod,
    json_name: "forecastPeriod"
end

defmodule Google.Ads.Googleads.V17.Resources.KeywordPlanForecastPeriod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :interval, 0

  field :date_interval, 1,
    type:
      Google.Ads.Googleads.V17.Enums.KeywordPlanForecastIntervalEnum.KeywordPlanForecastInterval,
    json_name: "dateInterval",
    enum: true,
    oneof: 0

  field :date_range, 2,
    type: Google.Ads.Googleads.V17.Common.DateRange,
    json_name: "dateRange",
    oneof: 0
end
