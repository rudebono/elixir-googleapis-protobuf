defmodule Google.Logging.V2.TailLogEntriesResponse.SuppressionInfo.Reason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :RATE_LIMIT, 1
  field :NOT_CONSUMED, 2
end

defmodule Google.Logging.V2.DeleteLogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :log_name, 1, type: :string, json_name: "logName", deprecated: false
end

defmodule Google.Logging.V2.WriteLogEntriesRequest.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Logging.V2.WriteLogEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :log_name, 1, type: :string, json_name: "logName", deprecated: false
  field :resource, 2, type: Google.Api.MonitoredResource, deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Logging.V2.WriteLogEntriesRequest.LabelsEntry,
    map: true,
    deprecated: false

  field :entries, 4, repeated: true, type: Google.Logging.V2.LogEntry, deprecated: false
  field :partial_success, 5, type: :bool, json_name: "partialSuccess", deprecated: false
  field :dry_run, 6, type: :bool, json_name: "dryRun", deprecated: false
end

defmodule Google.Logging.V2.WriteLogEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Logging.V2.WriteLogEntriesPartialErrors.LogEntryErrorsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: Google.Rpc.Status
end

defmodule Google.Logging.V2.WriteLogEntriesPartialErrors do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :log_entry_errors, 1,
    repeated: true,
    type: Google.Logging.V2.WriteLogEntriesPartialErrors.LogEntryErrorsEntry,
    json_name: "logEntryErrors",
    map: true
end

defmodule Google.Logging.V2.ListLogEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_names, 8,
    repeated: true,
    type: :string,
    json_name: "resourceNames",
    deprecated: false

  field :filter, 2, type: :string, deprecated: false
  field :order_by, 3, type: :string, json_name: "orderBy", deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Logging.V2.ListLogEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Logging.V2.LogEntry
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Logging.V2.ListMonitoredResourceDescriptorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Logging.V2.ListMonitoredResourceDescriptorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_descriptors, 1,
    repeated: true,
    type: Google.Api.MonitoredResourceDescriptor,
    json_name: "resourceDescriptors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Logging.V2.ListLogsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :resource_names, 8,
    repeated: true,
    type: :string,
    json_name: "resourceNames",
    deprecated: false

  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Logging.V2.ListLogsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :log_names, 3, repeated: true, type: :string, json_name: "logNames"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Logging.V2.TailLogEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_names, 1,
    repeated: true,
    type: :string,
    json_name: "resourceNames",
    deprecated: false

  field :filter, 2, type: :string, deprecated: false

  field :buffer_window, 3,
    type: Google.Protobuf.Duration,
    json_name: "bufferWindow",
    deprecated: false
end

defmodule Google.Logging.V2.TailLogEntriesResponse.SuppressionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reason, 1,
    type: Google.Logging.V2.TailLogEntriesResponse.SuppressionInfo.Reason,
    enum: true

  field :suppressed_count, 2, type: :int32, json_name: "suppressedCount"
end

defmodule Google.Logging.V2.TailLogEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Logging.V2.LogEntry

  field :suppression_info, 2,
    repeated: true,
    type: Google.Logging.V2.TailLogEntriesResponse.SuppressionInfo,
    json_name: "suppressionInfo"
end

defmodule Google.Logging.V2.LoggingServiceV2.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.logging.v2.LoggingServiceV2",
    protoc_gen_elixir_version: "0.15.0"

  rpc :DeleteLog, Google.Logging.V2.DeleteLogRequest, Google.Protobuf.Empty

  rpc :WriteLogEntries,
      Google.Logging.V2.WriteLogEntriesRequest,
      Google.Logging.V2.WriteLogEntriesResponse

  rpc :ListLogEntries,
      Google.Logging.V2.ListLogEntriesRequest,
      Google.Logging.V2.ListLogEntriesResponse

  rpc :ListMonitoredResourceDescriptors,
      Google.Logging.V2.ListMonitoredResourceDescriptorsRequest,
      Google.Logging.V2.ListMonitoredResourceDescriptorsResponse

  rpc :ListLogs, Google.Logging.V2.ListLogsRequest, Google.Logging.V2.ListLogsResponse

  rpc :TailLogEntries,
      stream(Google.Logging.V2.TailLogEntriesRequest),
      stream(Google.Logging.V2.TailLogEntriesResponse)
end

defmodule Google.Logging.V2.LoggingServiceV2.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Logging.V2.LoggingServiceV2.Service
end
