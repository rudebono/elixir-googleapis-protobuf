defmodule Google.Cloud.Datacatalog.Lineage.V1.Run.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN, 0
  field :STARTED, 1
  field :COMPLETED, 2
  field :FAILED, 3
  field :ABORTED, 4
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.OperationMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.OperationMetadata.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :DELETE, 1
  field :CREATE, 2
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.Origin.SourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SOURCE_TYPE_UNSPECIFIED, 0
  field :CUSTOM, 1
  field :BIGQUERY, 2
  field :DATA_FUSION, 3
  field :COMPOSER, 4
  field :LOOKER_STUDIO, 5
  field :DATAPROC, 6
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.Process.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.Process do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :attributes, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.Lineage.V1.Process.AttributesEntry,
    map: true,
    deprecated: false

  field :origin, 4, type: Google.Cloud.Datacatalog.Lineage.V1.Origin, deprecated: false
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.Run.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.Run do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :attributes, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.Lineage.V1.Run.AttributesEntry,
    map: true,
    deprecated: false

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :state, 6,
    type: Google.Cloud.Datacatalog.Lineage.V1.Run.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.LineageEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :links, 8,
    repeated: true,
    type: Google.Cloud.Datacatalog.Lineage.V1.EventLink,
    deprecated: false

  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.EventLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source, 1, type: Google.Cloud.Datacatalog.Lineage.V1.EntityReference, deprecated: false
  field :target, 2, type: Google.Cloud.Datacatalog.Lineage.V1.EntityReference, deprecated: false
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.EntityReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fully_qualified_name, 1,
    type: :string,
    json_name: "fullyQualifiedName",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Datacatalog.Lineage.V1.OperationMetadata.State,
    enum: true,
    deprecated: false

  field :operation_type, 2,
    type: Google.Cloud.Datacatalog.Lineage.V1.OperationMetadata.Type,
    json_name: "operationType",
    enum: true,
    deprecated: false

  field :resource, 3, type: :string, deprecated: false
  field :resource_uuid, 4, type: :string, json_name: "resourceUuid", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.ProcessOpenLineageRunEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :open_lineage, 2,
    type: Google.Protobuf.Struct,
    json_name: "openLineage",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.ProcessOpenLineageRunEventResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :process, 1, type: :string, deprecated: false
  field :run, 2, type: :string, deprecated: false

  field :lineage_events, 3,
    repeated: true,
    type: :string,
    json_name: "lineageEvents",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.CreateProcessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :process, 2, type: Google.Cloud.Datacatalog.Lineage.V1.Process, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.UpdateProcessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :process, 1, type: Google.Cloud.Datacatalog.Lineage.V1.Process, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.GetProcessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.ListProcessesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.ListProcessesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :processes, 1, repeated: true, type: Google.Cloud.Datacatalog.Lineage.V1.Process
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.DeleteProcessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.CreateRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :run, 2, type: Google.Cloud.Datacatalog.Lineage.V1.Run, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.UpdateRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :run, 1, type: Google.Cloud.Datacatalog.Lineage.V1.Run, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.GetRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.ListRunsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.ListRunsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :runs, 1, repeated: true, type: Google.Cloud.Datacatalog.Lineage.V1.Run
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.DeleteRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.CreateLineageEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :lineage_event, 2,
    type: Google.Cloud.Datacatalog.Lineage.V1.LineageEvent,
    json_name: "lineageEvent",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.GetLineageEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.ListLineageEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.ListLineageEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lineage_events, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.Lineage.V1.LineageEvent,
    json_name: "lineageEvents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.DeleteLineageEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.SearchLinksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :criteria, 0

  field :parent, 1, type: :string, deprecated: false

  field :source, 4,
    type: Google.Cloud.Datacatalog.Lineage.V1.EntityReference,
    oneof: 0,
    deprecated: false

  field :target, 5,
    type: Google.Cloud.Datacatalog.Lineage.V1.EntityReference,
    oneof: 0,
    deprecated: false

  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.SearchLinksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :links, 1, repeated: true, type: Google.Cloud.Datacatalog.Lineage.V1.Link
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.Link do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :source, 2, type: Google.Cloud.Datacatalog.Lineage.V1.EntityReference
  field :target, 3, type: Google.Cloud.Datacatalog.Lineage.V1.EntityReference
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.BatchSearchLinkProcessesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :links, 2, repeated: true, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.BatchSearchLinkProcessesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :process_links, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.Lineage.V1.ProcessLinks,
    json_name: "processLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.ProcessLinks do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :process, 1, type: :string, deprecated: false
  field :links, 2, repeated: true, type: Google.Cloud.Datacatalog.Lineage.V1.ProcessLinkInfo
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.ProcessLinkInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :link, 1, type: :string
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.Origin do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_type, 1,
    type: Google.Cloud.Datacatalog.Lineage.V1.Origin.SourceType,
    json_name: "sourceType",
    enum: true

  field :name, 2, type: :string
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.Lineage.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.datacatalog.lineage.v1.Lineage",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ProcessOpenLineageRunEvent,
      Google.Cloud.Datacatalog.Lineage.V1.ProcessOpenLineageRunEventRequest,
      Google.Cloud.Datacatalog.Lineage.V1.ProcessOpenLineageRunEventResponse

  rpc :CreateProcess,
      Google.Cloud.Datacatalog.Lineage.V1.CreateProcessRequest,
      Google.Cloud.Datacatalog.Lineage.V1.Process

  rpc :UpdateProcess,
      Google.Cloud.Datacatalog.Lineage.V1.UpdateProcessRequest,
      Google.Cloud.Datacatalog.Lineage.V1.Process

  rpc :GetProcess,
      Google.Cloud.Datacatalog.Lineage.V1.GetProcessRequest,
      Google.Cloud.Datacatalog.Lineage.V1.Process

  rpc :ListProcesses,
      Google.Cloud.Datacatalog.Lineage.V1.ListProcessesRequest,
      Google.Cloud.Datacatalog.Lineage.V1.ListProcessesResponse

  rpc :DeleteProcess,
      Google.Cloud.Datacatalog.Lineage.V1.DeleteProcessRequest,
      Google.Longrunning.Operation

  rpc :CreateRun,
      Google.Cloud.Datacatalog.Lineage.V1.CreateRunRequest,
      Google.Cloud.Datacatalog.Lineage.V1.Run

  rpc :UpdateRun,
      Google.Cloud.Datacatalog.Lineage.V1.UpdateRunRequest,
      Google.Cloud.Datacatalog.Lineage.V1.Run

  rpc :GetRun,
      Google.Cloud.Datacatalog.Lineage.V1.GetRunRequest,
      Google.Cloud.Datacatalog.Lineage.V1.Run

  rpc :ListRuns,
      Google.Cloud.Datacatalog.Lineage.V1.ListRunsRequest,
      Google.Cloud.Datacatalog.Lineage.V1.ListRunsResponse

  rpc :DeleteRun,
      Google.Cloud.Datacatalog.Lineage.V1.DeleteRunRequest,
      Google.Longrunning.Operation

  rpc :CreateLineageEvent,
      Google.Cloud.Datacatalog.Lineage.V1.CreateLineageEventRequest,
      Google.Cloud.Datacatalog.Lineage.V1.LineageEvent

  rpc :GetLineageEvent,
      Google.Cloud.Datacatalog.Lineage.V1.GetLineageEventRequest,
      Google.Cloud.Datacatalog.Lineage.V1.LineageEvent

  rpc :ListLineageEvents,
      Google.Cloud.Datacatalog.Lineage.V1.ListLineageEventsRequest,
      Google.Cloud.Datacatalog.Lineage.V1.ListLineageEventsResponse

  rpc :DeleteLineageEvent,
      Google.Cloud.Datacatalog.Lineage.V1.DeleteLineageEventRequest,
      Google.Protobuf.Empty

  rpc :SearchLinks,
      Google.Cloud.Datacatalog.Lineage.V1.SearchLinksRequest,
      Google.Cloud.Datacatalog.Lineage.V1.SearchLinksResponse

  rpc :BatchSearchLinkProcesses,
      Google.Cloud.Datacatalog.Lineage.V1.BatchSearchLinkProcessesRequest,
      Google.Cloud.Datacatalog.Lineage.V1.BatchSearchLinkProcessesResponse
end

defmodule Google.Cloud.Datacatalog.Lineage.V1.Lineage.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Datacatalog.Lineage.V1.Lineage.Service
end
