defmodule Google.Devtools.Cloudtrace.V1.TraceSpan.SpanKind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SPAN_KIND_UNSPECIFIED | :RPC_SERVER | :RPC_CLIENT

  field :SPAN_KIND_UNSPECIFIED, 0

  field :RPC_SERVER, 1

  field :RPC_CLIENT, 2
end

defmodule Google.Devtools.Cloudtrace.V1.ListTracesRequest.ViewType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VIEW_TYPE_UNSPECIFIED | :MINIMAL | :ROOTSPAN | :COMPLETE

  field :VIEW_TYPE_UNSPECIFIED, 0

  field :MINIMAL, 1

  field :ROOTSPAN, 2

  field :COMPLETE, 3
end

defmodule Google.Devtools.Cloudtrace.V1.Trace do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          trace_id: String.t(),
          spans: [Google.Devtools.Cloudtrace.V1.TraceSpan.t()]
        }

  defstruct [:project_id, :trace_id, :spans]

  field :project_id, 1, type: :string
  field :trace_id, 2, type: :string
  field :spans, 3, repeated: true, type: Google.Devtools.Cloudtrace.V1.TraceSpan
end

defmodule Google.Devtools.Cloudtrace.V1.Traces do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          traces: [Google.Devtools.Cloudtrace.V1.Trace.t()]
        }

  defstruct [:traces]

  field :traces, 1, repeated: true, type: Google.Devtools.Cloudtrace.V1.Trace
end

defmodule Google.Devtools.Cloudtrace.V1.TraceSpan.LabelsEntry do
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

defmodule Google.Devtools.Cloudtrace.V1.TraceSpan do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          span_id: non_neg_integer,
          kind: Google.Devtools.Cloudtrace.V1.TraceSpan.SpanKind.t(),
          name: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          parent_span_id: non_neg_integer,
          labels: %{String.t() => String.t()}
        }

  defstruct [:span_id, :kind, :name, :start_time, :end_time, :parent_span_id, :labels]

  field :span_id, 1, type: :fixed64
  field :kind, 2, type: Google.Devtools.Cloudtrace.V1.TraceSpan.SpanKind, enum: true
  field :name, 3, type: :string
  field :start_time, 4, type: Google.Protobuf.Timestamp
  field :end_time, 5, type: Google.Protobuf.Timestamp
  field :parent_span_id, 6, type: :fixed64

  field :labels, 7,
    repeated: true,
    type: Google.Devtools.Cloudtrace.V1.TraceSpan.LabelsEntry,
    map: true
end

defmodule Google.Devtools.Cloudtrace.V1.ListTracesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          view: Google.Devtools.Cloudtrace.V1.ListTracesRequest.ViewType.t(),
          page_size: integer,
          page_token: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [
    :project_id,
    :view,
    :page_size,
    :page_token,
    :start_time,
    :end_time,
    :filter,
    :order_by
  ]

  field :project_id, 1, type: :string
  field :view, 2, type: Google.Devtools.Cloudtrace.V1.ListTracesRequest.ViewType, enum: true
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :start_time, 5, type: Google.Protobuf.Timestamp
  field :end_time, 6, type: Google.Protobuf.Timestamp
  field :filter, 7, type: :string
  field :order_by, 8, type: :string
end

defmodule Google.Devtools.Cloudtrace.V1.ListTracesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          traces: [Google.Devtools.Cloudtrace.V1.Trace.t()],
          next_page_token: String.t()
        }

  defstruct [:traces, :next_page_token]

  field :traces, 1, repeated: true, type: Google.Devtools.Cloudtrace.V1.Trace
  field :next_page_token, 2, type: :string
end

defmodule Google.Devtools.Cloudtrace.V1.GetTraceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          trace_id: String.t()
        }

  defstruct [:project_id, :trace_id]

  field :project_id, 1, type: :string
  field :trace_id, 2, type: :string
end

defmodule Google.Devtools.Cloudtrace.V1.PatchTracesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          traces: Google.Devtools.Cloudtrace.V1.Traces.t() | nil
        }

  defstruct [:project_id, :traces]

  field :project_id, 1, type: :string
  field :traces, 2, type: Google.Devtools.Cloudtrace.V1.Traces
end
