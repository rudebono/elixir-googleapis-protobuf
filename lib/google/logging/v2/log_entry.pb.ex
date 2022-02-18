defmodule Google.Logging.V2.LogEntry.LabelsEntry do
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
defmodule Google.Logging.V2.LogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload:
            {:proto_payload, Google.Protobuf.Any.t() | nil}
            | {:text_payload, String.t()}
            | {:json_payload, Google.Protobuf.Struct.t() | nil},
          log_name: String.t(),
          resource: Google.Api.MonitoredResource.t() | nil,
          timestamp: Google.Protobuf.Timestamp.t() | nil,
          receive_timestamp: Google.Protobuf.Timestamp.t() | nil,
          severity: Google.Logging.Type.LogSeverity.t(),
          insert_id: String.t(),
          http_request: Google.Logging.Type.HttpRequest.t() | nil,
          labels: %{String.t() => String.t()},
          operation: Google.Logging.V2.LogEntryOperation.t() | nil,
          trace: String.t(),
          span_id: String.t(),
          trace_sampled: boolean,
          source_location: Google.Logging.V2.LogEntrySourceLocation.t() | nil,
          split: Google.Logging.V2.LogSplit.t() | nil
        }

  defstruct payload: nil,
            log_name: "",
            resource: nil,
            timestamp: nil,
            receive_timestamp: nil,
            severity: :DEFAULT,
            insert_id: "",
            http_request: nil,
            labels: %{},
            operation: nil,
            trace: "",
            span_id: "",
            trace_sampled: false,
            source_location: nil,
            split: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          producer: String.t(),
          first: boolean,
          last: boolean
        }

  defstruct id: "",
            producer: "",
            first: false,
            last: false

  field :id, 1, type: :string, deprecated: false
  field :producer, 2, type: :string, deprecated: false
  field :first, 3, type: :bool, deprecated: false
  field :last, 4, type: :bool, deprecated: false
end
defmodule Google.Logging.V2.LogEntrySourceLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file: String.t(),
          line: integer,
          function: String.t()
        }

  defstruct file: "",
            line: 0,
            function: ""

  field :file, 1, type: :string, deprecated: false
  field :line, 2, type: :int64, deprecated: false
  field :function, 3, type: :string, deprecated: false
end
defmodule Google.Logging.V2.LogSplit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uid: String.t(),
          index: integer,
          total_splits: integer
        }

  defstruct uid: "",
            index: 0,
            total_splits: 0

  field :uid, 1, type: :string
  field :index, 2, type: :int32
  field :total_splits, 3, type: :int32, json_name: "totalSplits"
end
