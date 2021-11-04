defmodule Google.Monitoring.Dashboard.V1.Aggregation.Aligner do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ALIGN_NONE
          | :ALIGN_DELTA
          | :ALIGN_RATE
          | :ALIGN_INTERPOLATE
          | :ALIGN_NEXT_OLDER
          | :ALIGN_MIN
          | :ALIGN_MAX
          | :ALIGN_MEAN
          | :ALIGN_COUNT
          | :ALIGN_SUM
          | :ALIGN_STDDEV
          | :ALIGN_COUNT_TRUE
          | :ALIGN_COUNT_FALSE
          | :ALIGN_FRACTION_TRUE
          | :ALIGN_PERCENTILE_99
          | :ALIGN_PERCENTILE_95
          | :ALIGN_PERCENTILE_50
          | :ALIGN_PERCENTILE_05
          | :ALIGN_PERCENT_CHANGE

  field :ALIGN_NONE, 0
  field :ALIGN_DELTA, 1
  field :ALIGN_RATE, 2
  field :ALIGN_INTERPOLATE, 3
  field :ALIGN_NEXT_OLDER, 4
  field :ALIGN_MIN, 10
  field :ALIGN_MAX, 11
  field :ALIGN_MEAN, 12
  field :ALIGN_COUNT, 13
  field :ALIGN_SUM, 14
  field :ALIGN_STDDEV, 15
  field :ALIGN_COUNT_TRUE, 16
  field :ALIGN_COUNT_FALSE, 24
  field :ALIGN_FRACTION_TRUE, 17
  field :ALIGN_PERCENTILE_99, 18
  field :ALIGN_PERCENTILE_95, 19
  field :ALIGN_PERCENTILE_50, 20
  field :ALIGN_PERCENTILE_05, 21
  field :ALIGN_PERCENT_CHANGE, 23
end

defmodule Google.Monitoring.Dashboard.V1.Aggregation.Reducer do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :REDUCE_NONE
          | :REDUCE_MEAN
          | :REDUCE_MIN
          | :REDUCE_MAX
          | :REDUCE_SUM
          | :REDUCE_STDDEV
          | :REDUCE_COUNT
          | :REDUCE_COUNT_TRUE
          | :REDUCE_COUNT_FALSE
          | :REDUCE_FRACTION_TRUE
          | :REDUCE_PERCENTILE_99
          | :REDUCE_PERCENTILE_95
          | :REDUCE_PERCENTILE_50
          | :REDUCE_PERCENTILE_05

  field :REDUCE_NONE, 0
  field :REDUCE_MEAN, 1
  field :REDUCE_MIN, 2
  field :REDUCE_MAX, 3
  field :REDUCE_SUM, 4
  field :REDUCE_STDDEV, 5
  field :REDUCE_COUNT, 6
  field :REDUCE_COUNT_TRUE, 7
  field :REDUCE_COUNT_FALSE, 15
  field :REDUCE_FRACTION_TRUE, 8
  field :REDUCE_PERCENTILE_99, 9
  field :REDUCE_PERCENTILE_95, 10
  field :REDUCE_PERCENTILE_50, 11
  field :REDUCE_PERCENTILE_05, 12
end

defmodule Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter.Method do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :METHOD_UNSPECIFIED
          | :METHOD_MEAN
          | :METHOD_MAX
          | :METHOD_MIN
          | :METHOD_SUM
          | :METHOD_LATEST

  field :METHOD_UNSPECIFIED, 0
  field :METHOD_MEAN, 1
  field :METHOD_MAX, 2
  field :METHOD_MIN, 3
  field :METHOD_SUM, 4
  field :METHOD_LATEST, 5
end

defmodule Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter.Direction do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DIRECTION_UNSPECIFIED | :TOP | :BOTTOM

  field :DIRECTION_UNSPECIFIED, 0
  field :TOP, 1
  field :BOTTOM, 2
end

defmodule Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter.Method do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :METHOD_UNSPECIFIED | :METHOD_CLUSTER_OUTLIER

  field :METHOD_UNSPECIFIED, 0
  field :METHOD_CLUSTER_OUTLIER, 1
end

defmodule Google.Monitoring.Dashboard.V1.Aggregation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alignment_period: Google.Protobuf.Duration.t() | nil,
          per_series_aligner: Google.Monitoring.Dashboard.V1.Aggregation.Aligner.t(),
          cross_series_reducer: Google.Monitoring.Dashboard.V1.Aggregation.Reducer.t(),
          group_by_fields: [String.t()]
        }

  defstruct [:alignment_period, :per_series_aligner, :cross_series_reducer, :group_by_fields]

  field :alignment_period, 1, type: Google.Protobuf.Duration, json_name: "alignmentPeriod"

  field :per_series_aligner, 2,
    type: Google.Monitoring.Dashboard.V1.Aggregation.Aligner,
    enum: true,
    json_name: "perSeriesAligner"

  field :cross_series_reducer, 4,
    type: Google.Monitoring.Dashboard.V1.Aggregation.Reducer,
    enum: true,
    json_name: "crossSeriesReducer"

  field :group_by_fields, 5, repeated: true, type: :string, json_name: "groupByFields"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ranking_method: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter.Method.t(),
          num_time_series: integer,
          direction: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter.Direction.t()
        }

  defstruct [:ranking_method, :num_time_series, :direction]

  field :ranking_method, 1,
    type: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter.Method,
    enum: true,
    json_name: "rankingMethod"

  field :num_time_series, 2, type: :int32, json_name: "numTimeSeries"

  field :direction, 3,
    type: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter.Direction,
    enum: true

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ranking_method: Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter.Method.t(),
          num_time_series: integer
        }

  defstruct [:ranking_method, :num_time_series]

  field :ranking_method, 1,
    type: Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter.Method,
    enum: true,
    json_name: "rankingMethod"

  field :num_time_series, 2, type: :int32, json_name: "numTimeSeries"

  def transform_module(), do: nil
end
