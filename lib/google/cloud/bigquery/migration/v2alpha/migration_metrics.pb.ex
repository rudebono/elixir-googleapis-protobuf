defmodule Google.Cloud.Bigquery.Migration.V2alpha.TimeSeries do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric: String.t(),
          value_type: Google.Api.MetricDescriptor.ValueType.t(),
          metric_kind: Google.Api.MetricDescriptor.MetricKind.t(),
          points: [Google.Cloud.Bigquery.Migration.V2alpha.Point.t()]
        }

  defstruct [:metric, :value_type, :metric_kind, :points]

  field :metric, 1, type: :string

  field :value_type, 2,
    type: Google.Api.MetricDescriptor.ValueType,
    enum: true,
    json_name: "valueType"

  field :metric_kind, 3,
    type: Google.Api.MetricDescriptor.MetricKind,
    enum: true,
    json_name: "metricKind"

  field :points, 4, repeated: true, type: Google.Cloud.Bigquery.Migration.V2alpha.Point

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.Point do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          interval: Google.Cloud.Bigquery.Migration.V2alpha.TimeInterval.t() | nil,
          value: Google.Cloud.Bigquery.Migration.V2alpha.TypedValue.t() | nil
        }

  defstruct [:interval, :value]

  field :interval, 1, type: Google.Cloud.Bigquery.Migration.V2alpha.TimeInterval
  field :value, 2, type: Google.Cloud.Bigquery.Migration.V2alpha.TypedValue

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.TimeInterval do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:start_time, :end_time]

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.TypedValue do
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

  defstruct [:value]

  oneof :value, 0

  field :bool_value, 1, type: :bool, json_name: "boolValue", oneof: 0
  field :int64_value, 2, type: :int64, json_name: "int64Value", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0
  field :string_value, 4, type: :string, json_name: "stringValue", oneof: 0

  field :distribution_value, 5,
    type: Google.Api.Distribution,
    json_name: "distributionValue",
    oneof: 0

  def transform_module(), do: nil
end
