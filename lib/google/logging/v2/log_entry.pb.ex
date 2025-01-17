defmodule Google.Logging.V2.LogEntry.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Logging.V2.LogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :payload, 0

  field :log_name, 12, type: :string, json_name: "logName", deprecated: false
  field :resource, 8, type: Google.Api.MonitoredResource, deprecated: false
  field :proto_payload, 2, type: Google.Protobuf.Any, json_name: "protoPayload", oneof: 0
  field :text_payload, 3, type: :string, json_name: "textPayload", oneof: 0
  field :json_payload, 6, type: Google.Protobuf.Struct, json_name: "jsonPayload", oneof: 0
  field :timestamp, 9, type: Google.Protobuf.Timestamp, deprecated: false

  field :receive_timestamp, 24,
    type: Google.Protobuf.Timestamp,
    json_name: "receiveTimestamp",
    deprecated: false

  field :severity, 10, type: Google.Logging.Type.LogSeverity, enum: true, deprecated: false
  field :insert_id, 4, type: :string, json_name: "insertId", deprecated: false

  field :http_request, 7,
    type: Google.Logging.Type.HttpRequest,
    json_name: "httpRequest",
    deprecated: false

  field :labels, 11,
    repeated: true,
    type: Google.Logging.V2.LogEntry.LabelsEntry,
    map: true,
    deprecated: false

  field :operation, 15, type: Google.Logging.V2.LogEntryOperation, deprecated: false
  field :trace, 22, type: :string, deprecated: false
  field :span_id, 27, type: :string, json_name: "spanId", deprecated: false
  field :trace_sampled, 30, type: :bool, json_name: "traceSampled", deprecated: false

  field :source_location, 23,
    type: Google.Logging.V2.LogEntrySourceLocation,
    json_name: "sourceLocation",
    deprecated: false

  field :split, 35, type: Google.Logging.V2.LogSplit, deprecated: false
end

defmodule Google.Logging.V2.LogEntryOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :producer, 2, type: :string, deprecated: false
  field :first, 3, type: :bool, deprecated: false
  field :last, 4, type: :bool, deprecated: false
end

defmodule Google.Logging.V2.LogEntrySourceLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :file, 1, type: :string, deprecated: false
  field :line, 2, type: :int64, deprecated: false
  field :function, 3, type: :string, deprecated: false
end

defmodule Google.Logging.V2.LogSplit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uid, 1, type: :string
  field :index, 2, type: :int32
  field :total_splits, 3, type: :int32, json_name: "totalSplits"
end
