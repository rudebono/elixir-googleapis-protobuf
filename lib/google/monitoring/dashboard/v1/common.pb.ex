defmodule Google.Monitoring.Dashboard.V1.Aggregation.Aligner do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :METHOD_UNSPECIFIED, 0
  field :METHOD_MEAN, 1
  field :METHOD_MAX, 2
  field :METHOD_MIN, 3
  field :METHOD_SUM, 4
  field :METHOD_LATEST, 5
end

defmodule Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter.Direction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DIRECTION_UNSPECIFIED, 0
  field :TOP, 1
  field :BOTTOM, 2
end

defmodule Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter.Method do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :METHOD_UNSPECIFIED, 0
  field :METHOD_CLUSTER_OUTLIER, 1
end

defmodule Google.Monitoring.Dashboard.V1.Aggregation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :alignment_period, 1, type: Google.Protobuf.Duration, json_name: "alignmentPeriod"

  field :per_series_aligner, 2,
    type: Google.Monitoring.Dashboard.V1.Aggregation.Aligner,
    json_name: "perSeriesAligner",
    enum: true

  field :cross_series_reducer, 4,
    type: Google.Monitoring.Dashboard.V1.Aggregation.Reducer,
    json_name: "crossSeriesReducer",
    enum: true

  field :group_by_fields, 5, repeated: true, type: :string, json_name: "groupByFields"
end

defmodule Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ranking_method, 1,
    type: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter.Method,
    json_name: "rankingMethod",
    enum: true

  field :num_time_series, 2, type: :int32, json_name: "numTimeSeries"

  field :direction, 3,
    type: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter.Direction,
    enum: true

  field :interval, 4, type: Google.Type.Interval
end

defmodule Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ranking_method, 1,
    type: Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter.Method,
    json_name: "rankingMethod",
    enum: true

  field :num_time_series, 2, type: :int32, json_name: "numTimeSeries"
end
