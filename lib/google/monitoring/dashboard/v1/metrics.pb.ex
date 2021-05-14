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

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          unit_override: String.t()
        }

  defstruct [:source, :unit_override]

  oneof :source, 0
  field :time_series_filter, 1, type: Google.Monitoring.Dashboard.V1.TimeSeriesFilter, oneof: 0

  field :time_series_filter_ratio, 2,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio,
    oneof: 0

  field :time_series_query_language, 3, type: :string, oneof: 0
  field :unit_override, 5, type: :string
end

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_filter: {atom, any},
          filter: String.t(),
          aggregation: Google.Monitoring.Dashboard.V1.Aggregation.t() | nil,
          secondary_aggregation: Google.Monitoring.Dashboard.V1.Aggregation.t() | nil
        }

  defstruct [:output_filter, :filter, :aggregation, :secondary_aggregation]

  oneof :output_filter, 0
  field :filter, 1, type: :string
  field :aggregation, 2, type: Google.Monitoring.Dashboard.V1.Aggregation
  field :secondary_aggregation, 3, type: Google.Monitoring.Dashboard.V1.Aggregation

  field :pick_time_series_filter, 4,
    type: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter,
    oneof: 0

  field :statistical_time_series_filter, 5,
    type: Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter,
    deprecated: true,
    oneof: 0
end

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          aggregation: Google.Monitoring.Dashboard.V1.Aggregation.t() | nil
        }

  defstruct [:filter, :aggregation]

  field :filter, 1, type: :string
  field :aggregation, 2, type: Google.Monitoring.Dashboard.V1.Aggregation
end

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_filter: {atom, any},
          numerator: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart.t() | nil,
          denominator: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart.t() | nil,
          secondary_aggregation: Google.Monitoring.Dashboard.V1.Aggregation.t() | nil
        }

  defstruct [:output_filter, :numerator, :denominator, :secondary_aggregation]

  oneof :output_filter, 0
  field :numerator, 1, type: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart
  field :denominator, 2, type: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart
  field :secondary_aggregation, 3, type: Google.Monitoring.Dashboard.V1.Aggregation

  field :pick_time_series_filter, 4,
    type: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter,
    oneof: 0

  field :statistical_time_series_filter, 5,
    type: Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter,
    deprecated: true,
    oneof: 0
end

defmodule Google.Monitoring.Dashboard.V1.Threshold do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label: String.t(),
          value: float | :infinity | :negative_infinity | :nan,
          color: Google.Monitoring.Dashboard.V1.Threshold.Color.t(),
          direction: Google.Monitoring.Dashboard.V1.Threshold.Direction.t()
        }

  defstruct [:label, :value, :color, :direction]

  field :label, 1, type: :string
  field :value, 2, type: :double
  field :color, 3, type: Google.Monitoring.Dashboard.V1.Threshold.Color, enum: true
  field :direction, 4, type: Google.Monitoring.Dashboard.V1.Threshold.Direction, enum: true
end
