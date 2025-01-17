defmodule Google.Devtools.Cloudtrace.V2.BatchWriteSpansRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :spans, 2, repeated: true, type: Google.Devtools.Cloudtrace.V2.Span, deprecated: false
end

defmodule Google.Devtools.Cloudtrace.V2.TraceService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.cloudtrace.v2.TraceService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :BatchWriteSpans,
      Google.Devtools.Cloudtrace.V2.BatchWriteSpansRequest,
      Google.Protobuf.Empty

  rpc :CreateSpan, Google.Devtools.Cloudtrace.V2.Span, Google.Devtools.Cloudtrace.V2.Span
end

defmodule Google.Devtools.Cloudtrace.V2.TraceService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Cloudtrace.V2.TraceService.Service
end
