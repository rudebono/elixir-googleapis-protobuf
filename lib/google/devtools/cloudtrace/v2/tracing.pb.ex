defmodule Google.Devtools.Cloudtrace.V2.BatchWriteSpansRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          spans: [Google.Devtools.Cloudtrace.V2.Span.t()]
        }

  defstruct [:name, :spans]

  field :name, 1, type: :string
  field :spans, 2, repeated: true, type: Google.Devtools.Cloudtrace.V2.Span
end

defmodule Google.Devtools.Cloudtrace.V2.TraceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.cloudtrace.v2.TraceService"

  rpc :BatchWriteSpans,
      Google.Devtools.Cloudtrace.V2.BatchWriteSpansRequest,
      Google.Protobuf.Empty

  rpc :CreateSpan, Google.Devtools.Cloudtrace.V2.Span, Google.Devtools.Cloudtrace.V2.Span
end

defmodule Google.Devtools.Cloudtrace.V2.TraceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Cloudtrace.V2.TraceService.Service
end
