defmodule Google.Api.Servicecontrol.V1.Operation.Importance do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LOW, 0
  field :HIGH, 1
end

defmodule Google.Api.Servicecontrol.V1.Operation.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.Servicecontrol.V1.Operation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
