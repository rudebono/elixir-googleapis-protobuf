defmodule Google.Api.Servicecontrol.V1.Operation.Importance do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LOW | :HIGH

  field :LOW, 0
  field :HIGH, 1
end
defmodule Google.Api.Servicecontrol.V1.Operation.LabelsEntry do
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
defmodule Google.Api.Servicecontrol.V1.Operation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_id: String.t(),
          operation_name: String.t(),
          consumer_id: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          metric_value_sets: [Google.Api.Servicecontrol.V1.MetricValueSet.t()],
          log_entries: [Google.Api.Servicecontrol.V1.LogEntry.t()],
          importance: Google.Api.Servicecontrol.V1.Operation.Importance.t(),
          extensions: [Google.Protobuf.Any.t()]
        }

  defstruct operation_id: "",
            operation_name: "",
            consumer_id: "",
            start_time: nil,
            end_time: nil,
            labels: %{},
            metric_value_sets: [],
            log_entries: [],
            importance: :LOW,
            extensions: []

  field :operation_id, 1, type: :string, json_name: "operationId"
  field :operation_name, 2, type: :string, json_name: "operationName"
  field :consumer_id, 3, type: :string, json_name: "consumerId"
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :labels, 6,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.Operation.LabelsEntry,
    map: true

  field :metric_value_sets, 7,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.MetricValueSet,
    json_name: "metricValueSets"

  field :log_entries, 8,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.LogEntry,
    json_name: "logEntries"

  field :importance, 11, type: Google.Api.Servicecontrol.V1.Operation.Importance, enum: true
  field :extensions, 16, repeated: true, type: Google.Protobuf.Any
end
