defmodule Google.Monitoring.V3.Point do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :interval, 1, type: Google.Monitoring.V3.TimeInterval
  field :value, 2, type: Google.Monitoring.V3.TypedValue
end

defmodule Google.Monitoring.V3.TimeSeries do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metric, 1, type: Google.Api.Metric
  field :resource, 2, type: Google.Api.MonitoredResource
  field :metadata, 7, type: Google.Api.MonitoredResourceMetadata

  field :metric_kind, 3,
    type: Google.Api.MetricDescriptor.MetricKind,
    json_name: "metricKind",
    enum: true

  field :value_type, 4,
    type: Google.Api.MetricDescriptor.ValueType,
    json_name: "valueType",
    enum: true

  field :points, 5, repeated: true, type: Google.Monitoring.V3.Point
  field :unit, 8, type: :string
end

defmodule Google.Monitoring.V3.TimeSeriesDescriptor.ValueDescriptor do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string

  field :value_type, 2,
    type: Google.Api.MetricDescriptor.ValueType,
    json_name: "valueType",
    enum: true

  field :metric_kind, 3,
    type: Google.Api.MetricDescriptor.MetricKind,
    json_name: "metricKind",
    enum: true

  field :unit, 4, type: :string
end

defmodule Google.Monitoring.V3.TimeSeriesDescriptor do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :label_descriptors, 1,
    repeated: true,
    type: Google.Api.LabelDescriptor,
    json_name: "labelDescriptors"

  field :point_descriptors, 5,
    repeated: true,
    type: Google.Monitoring.V3.TimeSeriesDescriptor.ValueDescriptor,
    json_name: "pointDescriptors"
end

defmodule Google.Monitoring.V3.TimeSeriesData.PointData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Monitoring.V3.TypedValue
  field :time_interval, 2, type: Google.Monitoring.V3.TimeInterval, json_name: "timeInterval"
end

defmodule Google.Monitoring.V3.TimeSeriesData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :label_values, 1,
    repeated: true,
    type: Google.Monitoring.V3.LabelValue,
    json_name: "labelValues"

  field :point_data, 2,
    repeated: true,
    type: Google.Monitoring.V3.TimeSeriesData.PointData,
    json_name: "pointData"
end

defmodule Google.Monitoring.V3.LabelValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :bool_value, 1, type: :bool, json_name: "boolValue", oneof: 0
  field :int64_value, 2, type: :int64, json_name: "int64Value", oneof: 0
  field :string_value, 3, type: :string, json_name: "stringValue", oneof: 0
end

defmodule Google.Monitoring.V3.QueryError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :locator, 1, type: Google.Monitoring.V3.TextLocator
  field :message, 2, type: :string
end

defmodule Google.Monitoring.V3.TextLocator.Position do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :line, 1, type: :int32
  field :column, 2, type: :int32
end

defmodule Google.Monitoring.V3.TextLocator do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :source, 1, type: :string

  field :start_position, 2,
    type: Google.Monitoring.V3.TextLocator.Position,
    json_name: "startPosition"

  field :end_position, 3,
    type: Google.Monitoring.V3.TextLocator.Position,
    json_name: "endPosition"

  field :nested_locator, 4, type: Google.Monitoring.V3.TextLocator, json_name: "nestedLocator"
  field :nesting_reason, 5, type: :string, json_name: "nestingReason"
end