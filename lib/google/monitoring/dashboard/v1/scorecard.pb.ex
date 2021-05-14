defmodule Google.Monitoring.Dashboard.V1.Scorecard.GaugeView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lower_bound: float | :infinity | :negative_infinity | :nan,
          upper_bound: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:lower_bound, :upper_bound]

  field :lower_bound, 1, type: :double
  field :upper_bound, 2, type: :double
end

defmodule Google.Monitoring.Dashboard.V1.Scorecard.SparkChartView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          spark_chart_type: Google.Monitoring.Dashboard.V1.SparkChartType.t(),
          min_alignment_period: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:spark_chart_type, :min_alignment_period]

  field :spark_chart_type, 1, type: Google.Monitoring.Dashboard.V1.SparkChartType, enum: true
  field :min_alignment_period, 2, type: Google.Protobuf.Duration
end

defmodule Google.Monitoring.Dashboard.V1.Scorecard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_view: {atom, any},
          time_series_query: Google.Monitoring.Dashboard.V1.TimeSeriesQuery.t() | nil,
          thresholds: [Google.Monitoring.Dashboard.V1.Threshold.t()]
        }

  defstruct [:data_view, :time_series_query, :thresholds]

  oneof :data_view, 0
  field :time_series_query, 1, type: Google.Monitoring.Dashboard.V1.TimeSeriesQuery
  field :gauge_view, 4, type: Google.Monitoring.Dashboard.V1.Scorecard.GaugeView, oneof: 0

  field :spark_chart_view, 5,
    type: Google.Monitoring.Dashboard.V1.Scorecard.SparkChartView,
    oneof: 0

  field :thresholds, 6, repeated: true, type: Google.Monitoring.Dashboard.V1.Threshold
end
