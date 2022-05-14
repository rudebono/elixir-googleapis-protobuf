defmodule Google.Appengine.Logging.V1.LogLine do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :time, 1, type: Google.Protobuf.Timestamp
  field :severity, 2, type: Google.Logging.Type.LogSeverity, enum: true
  field :log_message, 3, type: :string, json_name: "logMessage"

  field :source_location, 4,
    type: Google.Appengine.Logging.V1.SourceLocation,
    json_name: "sourceLocation"
end
defmodule Google.Appengine.Logging.V1.SourceLocation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :file, 1, type: :string
  field :line, 2, type: :int64
  field :function_name, 3, type: :string, json_name: "functionName"
end
defmodule Google.Appengine.Logging.V1.SourceReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :repository, 1, type: :string
  field :revision_id, 2, type: :string, json_name: "revisionId"
end
defmodule Google.Appengine.Logging.V1.RequestLog do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :app_id, 1, type: :string, json_name: "appId"
  field :module_id, 37, type: :string, json_name: "moduleId"
  field :version_id, 2, type: :string, json_name: "versionId"
  field :request_id, 3, type: :string, json_name: "requestId"
  field :ip, 4, type: :string
  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :latency, 8, type: Google.Protobuf.Duration
  field :mega_cycles, 9, type: :int64, json_name: "megaCycles"
  field :method, 10, type: :string
  field :resource, 11, type: :string
  field :http_version, 12, type: :string, json_name: "httpVersion"
  field :status, 13, type: :int32
  field :response_size, 14, type: :int64, json_name: "responseSize"
  field :referrer, 15, type: :string
  field :user_agent, 16, type: :string, json_name: "userAgent"
  field :nickname, 40, type: :string
  field :url_map_entry, 17, type: :string, json_name: "urlMapEntry"
  field :host, 20, type: :string
  field :cost, 21, type: :double
  field :task_queue_name, 22, type: :string, json_name: "taskQueueName"
  field :task_name, 23, type: :string, json_name: "taskName"
  field :was_loading_request, 24, type: :bool, json_name: "wasLoadingRequest"
  field :pending_time, 25, type: Google.Protobuf.Duration, json_name: "pendingTime"
  field :instance_index, 26, type: :int32, json_name: "instanceIndex"
  field :finished, 27, type: :bool
  field :first, 42, type: :bool
  field :instance_id, 28, type: :string, json_name: "instanceId"
  field :line, 29, repeated: true, type: Google.Appengine.Logging.V1.LogLine
  field :app_engine_release, 38, type: :string, json_name: "appEngineRelease"
  field :trace_id, 39, type: :string, json_name: "traceId"
  field :trace_sampled, 43, type: :bool, json_name: "traceSampled"

  field :source_reference, 41,
    repeated: true,
    type: Google.Appengine.Logging.V1.SourceReference,
    json_name: "sourceReference"
end
