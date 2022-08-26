defmodule Google.Cloud.Timeseriesinsights.V1.DataSet.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PENDING, 2
  field :LOADING, 3
  field :LOADED, 4
  field :UNLOADING, 5
  field :UNLOADED, 6
  field :FAILED, 7
end

defmodule Google.Cloud.Timeseriesinsights.V1.ForecastParams.Period do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PERIOD_UNSPECIFIED, 0
  field :HOURLY, 5
  field :DAILY, 1
  field :WEEKLY, 2
  field :MONTHLY, 3
  field :YEARLY, 4
end

defmodule Google.Cloud.Timeseriesinsights.V1.TimeseriesParams.AggregationMethod do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :AGGREGATION_METHOD_UNSPECIFIED, 0
  field :SUM, 1
  field :AVERAGE, 2
end

defmodule Google.Cloud.Timeseriesinsights.V1.BigqueryMapping do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :timestamp_column, 1, type: :string, json_name: "timestampColumn"
  field :group_id_column, 2, type: :string, json_name: "groupIdColumn"
  field :dimension_column, 3, repeated: true, type: :string, json_name: "dimensionColumn"
end

defmodule Google.Cloud.Timeseriesinsights.V1.DataSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :uri, 1, type: :string

  field :bq_mapping, 2,
    type: Google.Cloud.Timeseriesinsights.V1.BigqueryMapping,
    json_name: "bqMapping"
end

defmodule Google.Cloud.Timeseriesinsights.V1.DataSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :data_names, 2, repeated: true, type: :string, json_name: "dataNames"

  field :data_sources, 3,
    repeated: true,
    type: Google.Cloud.Timeseriesinsights.V1.DataSource,
    json_name: "dataSources"

  field :state, 4, type: Google.Cloud.Timeseriesinsights.V1.DataSet.State, enum: true
  field :status, 5, type: Google.Rpc.Status
  field :ttl, 6, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Timeseriesinsights.V1.EventDimension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :name, 1, type: :string
  field :string_val, 2, type: :string, json_name: "stringVal", oneof: 0
  field :long_val, 3, type: :int64, json_name: "longVal", oneof: 0
  field :bool_val, 4, type: :bool, json_name: "boolVal", oneof: 0
  field :double_val, 5, type: :double, json_name: "doubleVal", oneof: 0
end

defmodule Google.Cloud.Timeseriesinsights.V1.Event do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dimensions, 1, repeated: true, type: Google.Cloud.Timeseriesinsights.V1.EventDimension
  field :group_id, 2, type: :int64, json_name: "groupId"
  field :event_time, 3, type: Google.Protobuf.Timestamp, json_name: "eventTime"
end

defmodule Google.Cloud.Timeseriesinsights.V1.AppendEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :events, 1, repeated: true, type: Google.Cloud.Timeseriesinsights.V1.Event
  field :dataset, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Timeseriesinsights.V1.AppendEventsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dropped_events, 1,
    repeated: true,
    type: Google.Cloud.Timeseriesinsights.V1.Event,
    json_name: "droppedEvents"
end

defmodule Google.Cloud.Timeseriesinsights.V1.CreateDataSetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dataset, 2, type: Google.Cloud.Timeseriesinsights.V1.DataSet, deprecated: false
end

defmodule Google.Cloud.Timeseriesinsights.V1.DeleteDataSetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Timeseriesinsights.V1.ListDataSetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Timeseriesinsights.V1.ListDataSetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Cloud.Timeseriesinsights.V1.DataSet
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Timeseriesinsights.V1.PinnedDimension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :name, 1, type: :string
  field :string_val, 2, type: :string, json_name: "stringVal", oneof: 0
  field :bool_val, 3, type: :bool, json_name: "boolVal", oneof: 0
end

defmodule Google.Cloud.Timeseriesinsights.V1.ForecastParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :noise_threshold, 12,
    proto3_optional: true,
    type: :double,
    json_name: "noiseThreshold",
    deprecated: false

  field :seasonality_hint, 10,
    type: Google.Cloud.Timeseriesinsights.V1.ForecastParams.Period,
    json_name: "seasonalityHint",
    enum: true,
    deprecated: false

  field :horizon_duration, 13,
    type: Google.Protobuf.Duration,
    json_name: "horizonDuration",
    deprecated: false
end

defmodule Google.Cloud.Timeseriesinsights.V1.TimeseriesPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :time, 1, type: Google.Protobuf.Timestamp
  field :value, 2, proto3_optional: true, type: :double
end

defmodule Google.Cloud.Timeseriesinsights.V1.Timeseries do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :point, 1, repeated: true, type: Google.Cloud.Timeseriesinsights.V1.TimeseriesPoint
end

defmodule Google.Cloud.Timeseriesinsights.V1.EvaluatedSlice do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dimensions, 1, repeated: true, type: Google.Cloud.Timeseriesinsights.V1.PinnedDimension

  field :detection_point_actual, 11,
    proto3_optional: true,
    type: :double,
    json_name: "detectionPointActual"

  field :detection_point_forecast, 12,
    proto3_optional: true,
    type: :double,
    json_name: "detectionPointForecast"

  field :expected_deviation, 16,
    proto3_optional: true,
    type: :double,
    json_name: "expectedDeviation"

  field :anomaly_score, 17, proto3_optional: true, type: :double, json_name: "anomalyScore"
  field :history, 5, type: Google.Cloud.Timeseriesinsights.V1.Timeseries
  field :forecast, 10, type: Google.Cloud.Timeseriesinsights.V1.Timeseries
  field :status, 18, type: Google.Rpc.Status
end

defmodule Google.Cloud.Timeseriesinsights.V1.SlicingParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dimension_names, 1,
    repeated: true,
    type: :string,
    json_name: "dimensionNames",
    deprecated: false

  field :pinned_dimensions, 2,
    repeated: true,
    type: Google.Cloud.Timeseriesinsights.V1.PinnedDimension,
    json_name: "pinnedDimensions",
    deprecated: false
end

defmodule Google.Cloud.Timeseriesinsights.V1.TimeseriesParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forecast_history, 1,
    type: Google.Protobuf.Duration,
    json_name: "forecastHistory",
    deprecated: false

  field :granularity, 2, type: Google.Protobuf.Duration, deprecated: false
  field :metric, 4, proto3_optional: true, type: :string, deprecated: false

  field :metric_aggregation_method, 5,
    type: Google.Cloud.Timeseriesinsights.V1.TimeseriesParams.AggregationMethod,
    json_name: "metricAggregationMethod",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Timeseriesinsights.V1.QueryDataSetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :detection_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "detectionTime",
    deprecated: false

  field :num_returned_slices, 13,
    proto3_optional: true,
    type: :int32,
    json_name: "numReturnedSlices"

  field :slicing_params, 9,
    type: Google.Cloud.Timeseriesinsights.V1.SlicingParams,
    json_name: "slicingParams"

  field :timeseries_params, 10,
    type: Google.Cloud.Timeseriesinsights.V1.TimeseriesParams,
    json_name: "timeseriesParams"

  field :forecast_params, 5,
    type: Google.Cloud.Timeseriesinsights.V1.ForecastParams,
    json_name: "forecastParams"

  field :return_timeseries, 8, type: :bool, json_name: "returnTimeseries"
end

defmodule Google.Cloud.Timeseriesinsights.V1.QueryDataSetResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :slices, 3, repeated: true, type: Google.Cloud.Timeseriesinsights.V1.EvaluatedSlice
end

defmodule Google.Cloud.Timeseriesinsights.V1.EvaluateSliceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false

  field :pinned_dimensions, 2,
    repeated: true,
    type: Google.Cloud.Timeseriesinsights.V1.PinnedDimension,
    json_name: "pinnedDimensions",
    deprecated: false

  field :detection_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "detectionTime",
    deprecated: false

  field :timeseries_params, 4,
    type: Google.Cloud.Timeseriesinsights.V1.TimeseriesParams,
    json_name: "timeseriesParams"

  field :forecast_params, 5,
    type: Google.Cloud.Timeseriesinsights.V1.ForecastParams,
    json_name: "forecastParams"
end

defmodule Google.Cloud.Timeseriesinsights.V1.TimeseriesInsightsController.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.timeseriesinsights.v1.TimeseriesInsightsController",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListDataSets,
      Google.Cloud.Timeseriesinsights.V1.ListDataSetsRequest,
      Google.Cloud.Timeseriesinsights.V1.ListDataSetsResponse

  rpc :CreateDataSet,
      Google.Cloud.Timeseriesinsights.V1.CreateDataSetRequest,
      Google.Cloud.Timeseriesinsights.V1.DataSet

  rpc :DeleteDataSet,
      Google.Cloud.Timeseriesinsights.V1.DeleteDataSetRequest,
      Google.Protobuf.Empty

  rpc :AppendEvents,
      Google.Cloud.Timeseriesinsights.V1.AppendEventsRequest,
      Google.Cloud.Timeseriesinsights.V1.AppendEventsResponse

  rpc :QueryDataSet,
      Google.Cloud.Timeseriesinsights.V1.QueryDataSetRequest,
      Google.Cloud.Timeseriesinsights.V1.QueryDataSetResponse

  rpc :EvaluateSlice,
      Google.Cloud.Timeseriesinsights.V1.EvaluateSliceRequest,
      Google.Cloud.Timeseriesinsights.V1.EvaluatedSlice
end

defmodule Google.Cloud.Timeseriesinsights.V1.TimeseriesInsightsController.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Timeseriesinsights.V1.TimeseriesInsightsController.Service
end