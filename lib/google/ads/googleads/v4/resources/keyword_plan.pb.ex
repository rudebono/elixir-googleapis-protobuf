defmodule Google.Ads.Googleads.V4.Resources.KeywordPlan do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          forecast_period: Google.Ads.Googleads.V4.Resources.KeywordPlanForecastPeriod.t() | nil
        }

  defstruct [:resource_name, :id, :name, :forecast_period]

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :forecast_period, 4, type: Google.Ads.Googleads.V4.Resources.KeywordPlanForecastPeriod
end

defmodule Google.Ads.Googleads.V4.Resources.KeywordPlanForecastPeriod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          interval: {atom, any}
        }

  defstruct [:interval]

  oneof :interval, 0

  field :date_interval, 1,
    type:
      Google.Ads.Googleads.V4.Enums.KeywordPlanForecastIntervalEnum.KeywordPlanForecastInterval,
    enum: true,
    oneof: 0

  field :date_range, 2, type: Google.Ads.Googleads.V4.Common.DateRange, oneof: 0
end
