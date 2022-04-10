defmodule Google.Monitoring.Dashboard.V1.SparkChartType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SPARK_CHART_TYPE_UNSPECIFIED | :SPARK_LINE | :SPARK_BAR

  field :SPARK_CHART_TYPE_UNSPECIFIED, 0
  field :SPARK_LINE, 1
  field :SPARK_BAR, 2
end
defmodule Google.Monitoring.Dashboard.V1.Threshold.Color do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :COLOR_UNSPECIFIED | :YELLOW | :RED

  field :COLOR_UNSPECIFIED, 0
  field :YELLOW, 4
  field :RED, 6
end
defmodule Google.Monitoring.Dashboard.V1.Threshold.Direction do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DIRECTION_UNSPECIFIED | :ABOVE | :BELOW

  field :DIRECTION_UNSPECIFIED, 0
  field :ABOVE, 1
  field :BELOW, 2
end
defmodule Google.Monitoring.Dashboard.V1.Threshold.TargetAxis do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TARGET_AXIS_UNSPECIFIED | :Y1 | :Y2

  field :TARGET_AXIS_UNSPECIFIED, 0
  field :Y1, 1
  field :Y2, 2
end
defmodule Google.Monitoring.Dashboard.V1.TimeSeriesQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:time_series_filter, Google.Monitoring.Dashboard.V1.TimeSeriesFilter.t() | nil}
            | {:time_series_filter_ratio,
               Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.t() | nil}
            | {:time_series_query_language, String.t()},
          unit_override: String.t()
        }

  defstruct source: nil,
            unit_override: ""

  oneof :source, 0

  field :time_series_filter, 1,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesFilter,
    json_name: "timeSeriesFilter",
    oneof: 0

  field :time_series_filter_ratio, 2,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio,
    json_name: "timeSeriesFilterRatio",
    oneof: 0

  field :time_series_query_language, 3,
    type: :string,
    json_name: "timeSeriesQueryLanguage",
    oneof: 0

  field :unit_override, 5, type: :string, json_name: "unitOverride"
end
defmodule Google.Monitoring.Dashboard.V1.TimeSeriesFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_filter:
            {:pick_time_series_filter,
             Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter.t() | nil}
            | {:statistical_time_series_filter,
               Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter.t() | nil},
          filter: String.t(),
          aggregation: Google.Monitoring.Dashboard.V1.Aggregation.t() | nil,
          secondary_aggregation: Google.Monitoring.Dashboard.V1.Aggregation.t() | nil
        }

  defstruct output_filter: nil,
            filter: "",
            aggregation: nil,
            secondary_aggregation: nil

  oneof :output_filter, 0

  field :filter, 1, type: :string, deprecated: false
  field :aggregation, 2, type: Google.Monitoring.Dashboard.V1.Aggregation

  field :secondary_aggregation, 3,
    type: Google.Monitoring.Dashboard.V1.Aggregation,
    json_name: "secondaryAggregation"

  field :pick_time_series_filter, 4,
    type: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter,
    json_name: "pickTimeSeriesFilter",
    oneof: 0

  field :statistical_time_series_filter, 5,
    type: Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter,
    json_name: "statisticalTimeSeriesFilter",
    oneof: 0,
    deprecated: true
end
defmodule Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          aggregation: Google.Monitoring.Dashboard.V1.Aggregation.t() | nil
        }

  defstruct filter: "",
            aggregation: nil

  field :filter, 1, type: :string, deprecated: false
  field :aggregation, 2, type: Google.Monitoring.Dashboard.V1.Aggregation
end
defmodule Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_filter:
            {:pick_time_series_filter,
             Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter.t() | nil}
            | {:statistical_time_series_filter,
               Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter.t() | nil},
          numerator: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart.t() | nil,
          denominator: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart.t() | nil,
          secondary_aggregation: Google.Monitoring.Dashboard.V1.Aggregation.t() | nil
        }

  defstruct output_filter: nil,
            numerator: nil,
            denominator: nil,
            secondary_aggregation: nil

  oneof :output_filter, 0

  field :numerator, 1, type: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart
  field :denominator, 2, type: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart

  field :secondary_aggregation, 3,
    type: Google.Monitoring.Dashboard.V1.Aggregation,
    json_name: "secondaryAggregation"

  field :pick_time_series_filter, 4,
    type: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter,
    json_name: "pickTimeSeriesFilter",
    oneof: 0

  field :statistical_time_series_filter, 5,
    type: Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter,
    json_name: "statisticalTimeSeriesFilter",
    oneof: 0,
    deprecated: true
end
defmodule Google.Monitoring.Dashboard.V1.Threshold do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label: String.t(),
          value: float | :infinity | :negative_infinity | :nan,
          color: Google.Monitoring.Dashboard.V1.Threshold.Color.t(),
          direction: Google.Monitoring.Dashboard.V1.Threshold.Direction.t(),
          target_axis: Google.Monitoring.Dashboard.V1.Threshold.TargetAxis.t()
        }

  defstruct label: "",
            value: 0.0,
            color: :COLOR_UNSPECIFIED,
            direction: :DIRECTION_UNSPECIFIED,
            target_axis: :TARGET_AXIS_UNSPECIFIED

  field :label, 1, type: :string
  field :value, 2, type: :double
  field :color, 3, type: Google.Monitoring.Dashboard.V1.Threshold.Color, enum: true
  field :direction, 4, type: Google.Monitoring.Dashboard.V1.Threshold.Direction, enum: true

  field :target_axis, 5,
    type: Google.Monitoring.Dashboard.V1.Threshold.TargetAxis,
    json_name: "targetAxis",
    enum: true
end
