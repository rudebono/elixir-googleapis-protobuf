defmodule Google.Monitoring.V3.Point do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          interval: Google.Monitoring.V3.TimeInterval.t() | nil,
          value: Google.Monitoring.V3.TypedValue.t() | nil
        }

  defstruct [:interval, :value]

  field :interval, 1, type: Google.Monitoring.V3.TimeInterval
  field :value, 2, type: Google.Monitoring.V3.TypedValue

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.TimeSeries do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric: Google.Api.Metric.t() | nil,
          resource: Google.Api.MonitoredResource.t() | nil,
          metadata: Google.Api.MonitoredResourceMetadata.t() | nil,
          metric_kind: Google.Api.MetricDescriptor.MetricKind.t(),
          value_type: Google.Api.MetricDescriptor.ValueType.t(),
          points: [Google.Monitoring.V3.Point.t()],
          unit: String.t()
        }

  defstruct [:metric, :resource, :metadata, :metric_kind, :value_type, :points, :unit]

  field :metric, 1, type: Google.Api.Metric
  field :resource, 2, type: Google.Api.MonitoredResource
  field :metadata, 7, type: Google.Api.MonitoredResourceMetadata

  field :metric_kind, 3,
    type: Google.Api.MetricDescriptor.MetricKind,
    enum: true,
    json_name: "metricKind"

  field :value_type, 4,
    type: Google.Api.MetricDescriptor.ValueType,
    enum: true,
    json_name: "valueType"

  field :points, 5, repeated: true, type: Google.Monitoring.V3.Point
  field :unit, 8, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.TimeSeriesDescriptor.ValueDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value_type: Google.Api.MetricDescriptor.ValueType.t(),
          metric_kind: Google.Api.MetricDescriptor.MetricKind.t(),
          unit: String.t()
        }

  defstruct [:key, :value_type, :metric_kind, :unit]

  field :key, 1, type: :string

  field :value_type, 2,
    type: Google.Api.MetricDescriptor.ValueType,
    enum: true,
    json_name: "valueType"

  field :metric_kind, 3,
    type: Google.Api.MetricDescriptor.MetricKind,
    enum: true,
    json_name: "metricKind"

  field :unit, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.TimeSeriesDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label_descriptors: [Google.Api.LabelDescriptor.t()],
          point_descriptors: [Google.Monitoring.V3.TimeSeriesDescriptor.ValueDescriptor.t()]
        }

  defstruct [:label_descriptors, :point_descriptors]

  field :label_descriptors, 1,
    repeated: true,
    type: Google.Api.LabelDescriptor,
    json_name: "labelDescriptors"

  field :point_descriptors, 5,
    repeated: true,
    type: Google.Monitoring.V3.TimeSeriesDescriptor.ValueDescriptor,
    json_name: "pointDescriptors"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.TimeSeriesData.PointData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Monitoring.V3.TypedValue.t()],
          time_interval: Google.Monitoring.V3.TimeInterval.t() | nil
        }

  defstruct [:values, :time_interval]

  field :values, 1, repeated: true, type: Google.Monitoring.V3.TypedValue
  field :time_interval, 2, type: Google.Monitoring.V3.TimeInterval, json_name: "timeInterval"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.TimeSeriesData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label_values: [Google.Monitoring.V3.LabelValue.t()],
          point_data: [Google.Monitoring.V3.TimeSeriesData.PointData.t()]
        }

  defstruct [:label_values, :point_data]

  field :label_values, 1,
    repeated: true,
    type: Google.Monitoring.V3.LabelValue,
    json_name: "labelValues"

  field :point_data, 2,
    repeated: true,
    type: Google.Monitoring.V3.TimeSeriesData.PointData,
    json_name: "pointData"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.LabelValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {:bool_value, boolean} | {:int64_value, integer} | {:string_value, String.t()}
        }

  defstruct [:value]

  oneof :value, 0

  field :bool_value, 1, type: :bool, json_name: "boolValue", oneof: 0
  field :int64_value, 2, type: :int64, json_name: "int64Value", oneof: 0
  field :string_value, 3, type: :string, json_name: "stringValue", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.QueryError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locator: Google.Monitoring.V3.TextLocator.t() | nil,
          message: String.t()
        }

  defstruct [:locator, :message]

  field :locator, 1, type: Google.Monitoring.V3.TextLocator
  field :message, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.TextLocator.Position do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          line: integer,
          column: integer
        }

  defstruct [:line, :column]

  field :line, 1, type: :int32
  field :column, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.TextLocator do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: String.t(),
          start_position: Google.Monitoring.V3.TextLocator.Position.t() | nil,
          end_position: Google.Monitoring.V3.TextLocator.Position.t() | nil,
          nested_locator: Google.Monitoring.V3.TextLocator.t() | nil,
          nesting_reason: String.t()
        }

  defstruct [:source, :start_position, :end_position, :nested_locator, :nesting_reason]

  field :source, 1, type: :string

  field :start_position, 2,
    type: Google.Monitoring.V3.TextLocator.Position,
    json_name: "startPosition"

  field :end_position, 3,
    type: Google.Monitoring.V3.TextLocator.Position,
    json_name: "endPosition"

  field :nested_locator, 4, type: Google.Monitoring.V3.TextLocator, json_name: "nestedLocator"
  field :nesting_reason, 5, type: :string, json_name: "nestingReason"

  def transform_module(), do: nil
end
