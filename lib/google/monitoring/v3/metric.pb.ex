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
  field :metric_kind, 3, type: Google.Api.MetricDescriptor.MetricKind, enum: true
  field :value_type, 4, type: Google.Api.MetricDescriptor.ValueType, enum: true
  field :points, 5, repeated: true, type: Google.Monitoring.V3.Point
  field :unit, 8, type: :string
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
  field :value_type, 2, type: Google.Api.MetricDescriptor.ValueType, enum: true
  field :metric_kind, 3, type: Google.Api.MetricDescriptor.MetricKind, enum: true
  field :unit, 4, type: :string
end

defmodule Google.Monitoring.V3.TimeSeriesDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label_descriptors: [Google.Api.LabelDescriptor.t()],
          point_descriptors: [Google.Monitoring.V3.TimeSeriesDescriptor.ValueDescriptor.t()]
        }

  defstruct [:label_descriptors, :point_descriptors]

  field :label_descriptors, 1, repeated: true, type: Google.Api.LabelDescriptor

  field :point_descriptors, 5,
    repeated: true,
    type: Google.Monitoring.V3.TimeSeriesDescriptor.ValueDescriptor
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
  field :time_interval, 2, type: Google.Monitoring.V3.TimeInterval
end

defmodule Google.Monitoring.V3.TimeSeriesData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label_values: [Google.Monitoring.V3.LabelValue.t()],
          point_data: [Google.Monitoring.V3.TimeSeriesData.PointData.t()]
        }

  defstruct [:label_values, :point_data]

  field :label_values, 1, repeated: true, type: Google.Monitoring.V3.LabelValue
  field :point_data, 2, repeated: true, type: Google.Monitoring.V3.TimeSeriesData.PointData
end

defmodule Google.Monitoring.V3.LabelValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {atom, any}
        }

  defstruct [:value]

  oneof :value, 0
  field :bool_value, 1, type: :bool, oneof: 0
  field :int64_value, 2, type: :int64, oneof: 0
  field :string_value, 3, type: :string, oneof: 0
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
  field :start_position, 2, type: Google.Monitoring.V3.TextLocator.Position
  field :end_position, 3, type: Google.Monitoring.V3.TextLocator.Position
  field :nested_locator, 4, type: Google.Monitoring.V3.TextLocator
  field :nesting_reason, 5, type: :string
end
