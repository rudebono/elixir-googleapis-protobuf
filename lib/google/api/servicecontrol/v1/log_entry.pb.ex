defmodule Google.Api.Servicecontrol.V1.LogEntry.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.Servicecontrol.V1.LogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :payload, 0

  field :name, 10, type: :string
  field :timestamp, 11, type: Google.Protobuf.Timestamp
  field :severity, 12, type: Google.Logging.Type.LogSeverity, enum: true

  field :http_request, 14,
    type: Google.Api.Servicecontrol.V1.HttpRequest,
    json_name: "httpRequest"

  field :trace, 15, type: :string
  field :insert_id, 4, type: :string, json_name: "insertId"

  field :labels, 13,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.LogEntry.LabelsEntry,
    map: true

  field :proto_payload, 2, type: Google.Protobuf.Any, json_name: "protoPayload", oneof: 0
  field :text_payload, 3, type: :string, json_name: "textPayload", oneof: 0
  field :struct_payload, 6, type: Google.Protobuf.Struct, json_name: "structPayload", oneof: 0
  field :operation, 16, type: Google.Api.Servicecontrol.V1.LogEntryOperation

  field :source_location, 17,
    type: Google.Api.Servicecontrol.V1.LogEntrySourceLocation,
    json_name: "sourceLocation"
end

defmodule Google.Api.Servicecontrol.V1.LogEntryOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string
  field :producer, 2, type: :string
  field :first, 3, type: :bool
  field :last, 4, type: :bool
end

defmodule Google.Api.Servicecontrol.V1.LogEntrySourceLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :file, 1, type: :string
  field :line, 2, type: :int64
  field :function, 3, type: :string
end
