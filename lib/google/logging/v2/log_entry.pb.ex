defmodule Google.Logging.V2.LogEntry.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Logging.V2.LogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: {atom, any},
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
          source_location: Google.Logging.V2.LogEntrySourceLocation.t() | nil
        }

  defstruct [
    :payload,
    :log_name,
    :resource,
    :timestamp,
    :receive_timestamp,
    :severity,
    :insert_id,
    :http_request,
    :labels,
    :operation,
    :trace,
    :span_id,
    :trace_sampled,
    :source_location
  ]

  oneof :payload, 0
  field :log_name, 12, type: :string
  field :resource, 8, type: Google.Api.MonitoredResource
  field :proto_payload, 2, type: Google.Protobuf.Any, oneof: 0
  field :text_payload, 3, type: :string, oneof: 0
  field :json_payload, 6, type: Google.Protobuf.Struct, oneof: 0
  field :timestamp, 9, type: Google.Protobuf.Timestamp
  field :receive_timestamp, 24, type: Google.Protobuf.Timestamp
  field :severity, 10, type: Google.Logging.Type.LogSeverity, enum: true
  field :insert_id, 4, type: :string
  field :http_request, 7, type: Google.Logging.Type.HttpRequest
  field :labels, 11, repeated: true, type: Google.Logging.V2.LogEntry.LabelsEntry, map: true
  field :operation, 15, type: Google.Logging.V2.LogEntryOperation
  field :trace, 22, type: :string
  field :span_id, 27, type: :string
  field :trace_sampled, 30, type: :bool
  field :source_location, 23, type: Google.Logging.V2.LogEntrySourceLocation
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

  defstruct [:id, :producer, :first, :last]

  field :id, 1, type: :string
  field :producer, 2, type: :string
  field :first, 3, type: :bool
  field :last, 4, type: :bool
end

defmodule Google.Logging.V2.LogEntrySourceLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file: String.t(),
          line: integer,
          function: String.t()
        }

  defstruct [:file, :line, :function]

  field :file, 1, type: :string
  field :line, 2, type: :int64
  field :function, 3, type: :string
end
