defmodule Google.Devtools.Cloudtrace.V1.TraceSpan.SpanKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SPAN_KIND_UNSPECIFIED, 0
  field :RPC_SERVER, 1
  field :RPC_CLIENT, 2
end

defmodule Google.Devtools.Cloudtrace.V1.ListTracesRequest.ViewType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :VIEW_TYPE_UNSPECIFIED, 0
  field :MINIMAL, 1
  field :ROOTSPAN, 2
  field :COMPLETE, 3
end

defmodule Google.Devtools.Cloudtrace.V1.Trace do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :trace_id, 2, type: :string, json_name: "traceId"
  field :spans, 3, repeated: true, type: Google.Devtools.Cloudtrace.V1.TraceSpan
end

defmodule Google.Devtools.Cloudtrace.V1.Traces do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :traces, 1, repeated: true, type: Google.Devtools.Cloudtrace.V1.Trace
end

defmodule Google.Devtools.Cloudtrace.V1.TraceSpan.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Cloudtrace.V1.TraceSpan do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :span_id, 1, type: :fixed64, json_name: "spanId"
  field :kind, 2, type: Google.Devtools.Cloudtrace.V1.TraceSpan.SpanKind, enum: true
  field :name, 3, type: :string
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :parent_span_id, 6, type: :fixed64, json_name: "parentSpanId", deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Devtools.Cloudtrace.V1.TraceSpan.LabelsEntry,
    map: true
end

defmodule Google.Devtools.Cloudtrace.V1.ListTracesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false

  field :view, 2,
    type: Google.Devtools.Cloudtrace.V1.ListTracesRequest.ViewType,
    enum: true,
    deprecated: false

  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :filter, 7, type: :string, deprecated: false
  field :order_by, 8, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Devtools.Cloudtrace.V1.ListTracesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :traces, 1, repeated: true, type: Google.Devtools.Cloudtrace.V1.Trace
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Cloudtrace.V1.GetTraceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :trace_id, 2, type: :string, json_name: "traceId", deprecated: false
end

defmodule Google.Devtools.Cloudtrace.V1.PatchTracesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :traces, 2, type: Google.Devtools.Cloudtrace.V1.Traces, deprecated: false
end

defmodule Google.Devtools.Cloudtrace.V1.TraceService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.devtools.cloudtrace.v1.TraceService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListTraces,
      Google.Devtools.Cloudtrace.V1.ListTracesRequest,
      Google.Devtools.Cloudtrace.V1.ListTracesResponse

  rpc :GetTrace,
      Google.Devtools.Cloudtrace.V1.GetTraceRequest,
      Google.Devtools.Cloudtrace.V1.Trace

  rpc :PatchTraces, Google.Devtools.Cloudtrace.V1.PatchTracesRequest, Google.Protobuf.Empty
end

defmodule Google.Devtools.Cloudtrace.V1.TraceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Cloudtrace.V1.TraceService.Service
end