defmodule Google.Monitoring.V3.ComparisonType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COMPARISON_UNSPECIFIED
          | :COMPARISON_GT
          | :COMPARISON_GE
          | :COMPARISON_LT
          | :COMPARISON_LE
          | :COMPARISON_EQ
          | :COMPARISON_NE

  field :COMPARISON_UNSPECIFIED, 0
  field :COMPARISON_GT, 1
  field :COMPARISON_GE, 2
  field :COMPARISON_LT, 3
  field :COMPARISON_LE, 4
  field :COMPARISON_EQ, 5
  field :COMPARISON_NE, 6
end
defmodule Google.Monitoring.V3.ServiceTier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SERVICE_TIER_UNSPECIFIED | :SERVICE_TIER_BASIC | :SERVICE_TIER_PREMIUM

  field :SERVICE_TIER_UNSPECIFIED, 0
  field :SERVICE_TIER_BASIC, 1
  field :SERVICE_TIER_PREMIUM, 2
end
defmodule Google.Monitoring.V3.Aggregation.Aligner do
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
defmodule Google.Monitoring.V3.Aggregation.Reducer do
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
defmodule Google.Monitoring.V3.TypedValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:bool_value, boolean}
            | {:int64_value, integer}
            | {:double_value, float | :infinity | :negative_infinity | :nan}
            | {:string_value, String.t()}
            | {:distribution_value, Google.Api.Distribution.t() | nil}
        }

  defstruct value: nil

  oneof :value, 0

  field :bool_value, 1, type: :bool, json_name: "boolValue", oneof: 0
  field :int64_value, 2, type: :int64, json_name: "int64Value", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0
  field :string_value, 4, type: :string, json_name: "stringValue", oneof: 0

  field :distribution_value, 5,
    type: Google.Api.Distribution,
    json_name: "distributionValue",
    oneof: 0
end
defmodule Google.Monitoring.V3.TimeInterval do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          end_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct end_time: nil,
            start_time: nil

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
end
defmodule Google.Monitoring.V3.Aggregation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alignment_period: Google.Protobuf.Duration.t() | nil,
          per_series_aligner: Google.Monitoring.V3.Aggregation.Aligner.t(),
          cross_series_reducer: Google.Monitoring.V3.Aggregation.Reducer.t(),
          group_by_fields: [String.t()]
        }

  defstruct alignment_period: nil,
            per_series_aligner: :ALIGN_NONE,
            cross_series_reducer: :REDUCE_NONE,
            group_by_fields: []

  field :alignment_period, 1, type: Google.Protobuf.Duration, json_name: "alignmentPeriod"

  field :per_series_aligner, 2,
    type: Google.Monitoring.V3.Aggregation.Aligner,
    json_name: "perSeriesAligner",
    enum: true

  field :cross_series_reducer, 4,
    type: Google.Monitoring.V3.Aggregation.Reducer,
    json_name: "crossSeriesReducer",
    enum: true

  field :group_by_fields, 5, repeated: true, type: :string, json_name: "groupByFields"
end
