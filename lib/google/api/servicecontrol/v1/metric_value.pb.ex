defmodule Google.Api.Servicecontrol.V1.MetricValue.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Api.Servicecontrol.V1.MetricValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:bool_value, boolean}
            | {:int64_value, integer}
            | {:double_value, float | :infinity | :negative_infinity | :nan}
            | {:string_value, String.t()}
            | {:distribution_value, Google.Api.Servicecontrol.V1.Distribution.t() | nil},
          labels: %{String.t() => String.t()},
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct value: nil,
            labels: %{},
            start_time: nil,
            end_time: nil

  oneof :value, 0

  field :labels, 1,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.MetricValue.LabelsEntry,
    map: true

  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :bool_value, 4, type: :bool, json_name: "boolValue", oneof: 0
  field :int64_value, 5, type: :int64, json_name: "int64Value", oneof: 0
  field :double_value, 6, type: :double, json_name: "doubleValue", oneof: 0
  field :string_value, 7, type: :string, json_name: "stringValue", oneof: 0

  field :distribution_value, 8,
    type: Google.Api.Servicecontrol.V1.Distribution,
    json_name: "distributionValue",
    oneof: 0
end
defmodule Google.Api.Servicecontrol.V1.MetricValueSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_name: String.t(),
          metric_values: [Google.Api.Servicecontrol.V1.MetricValue.t()]
        }

  defstruct metric_name: "",
            metric_values: []

  field :metric_name, 1, type: :string, json_name: "metricName"

  field :metric_values, 2,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.MetricValue,
    json_name: "metricValues"
end
