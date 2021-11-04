defmodule Google.Devtools.Cloudtrace.V2.Span.SpanKind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :SPAN_KIND_UNSPECIFIED | :INTERNAL | :SERVER | :CLIENT | :PRODUCER | :CONSUMER

  field :SPAN_KIND_UNSPECIFIED, 0
  field :INTERNAL, 1
  field :SERVER, 2
  field :CLIENT, 3
  field :PRODUCER, 4
  field :CONSUMER, 5
end

defmodule Google.Devtools.Cloudtrace.V2.Span.TimeEvent.MessageEvent.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :SENT | :RECEIVED

  field :TYPE_UNSPECIFIED, 0
  field :SENT, 1
  field :RECEIVED, 2
end

defmodule Google.Devtools.Cloudtrace.V2.Span.Link.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :CHILD_LINKED_SPAN | :PARENT_LINKED_SPAN

  field :TYPE_UNSPECIFIED, 0
  field :CHILD_LINKED_SPAN, 1
  field :PARENT_LINKED_SPAN, 2
end

defmodule Google.Devtools.Cloudtrace.V2.Span.Attributes.AttributeMapEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Devtools.Cloudtrace.V2.AttributeValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Devtools.Cloudtrace.V2.AttributeValue

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.Span.Attributes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attribute_map: %{String.t() => Google.Devtools.Cloudtrace.V2.AttributeValue.t() | nil},
          dropped_attributes_count: integer
        }

  defstruct [:attribute_map, :dropped_attributes_count]

  field :attribute_map, 1,
    repeated: true,
    type: Google.Devtools.Cloudtrace.V2.Span.Attributes.AttributeMapEntry,
    json_name: "attributeMap",
    map: true

  field :dropped_attributes_count, 2, type: :int32, json_name: "droppedAttributesCount"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.Span.TimeEvent.Annotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: Google.Devtools.Cloudtrace.V2.TruncatableString.t() | nil,
          attributes: Google.Devtools.Cloudtrace.V2.Span.Attributes.t() | nil
        }

  defstruct [:description, :attributes]

  field :description, 1, type: Google.Devtools.Cloudtrace.V2.TruncatableString
  field :attributes, 2, type: Google.Devtools.Cloudtrace.V2.Span.Attributes

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.Span.TimeEvent.MessageEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Devtools.Cloudtrace.V2.Span.TimeEvent.MessageEvent.Type.t(),
          id: integer,
          uncompressed_size_bytes: integer,
          compressed_size_bytes: integer
        }

  defstruct [:type, :id, :uncompressed_size_bytes, :compressed_size_bytes]

  field :type, 1, type: Google.Devtools.Cloudtrace.V2.Span.TimeEvent.MessageEvent.Type, enum: true
  field :id, 2, type: :int64
  field :uncompressed_size_bytes, 3, type: :int64, json_name: "uncompressedSizeBytes"
  field :compressed_size_bytes, 4, type: :int64, json_name: "compressedSizeBytes"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.Span.TimeEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:annotation, Google.Devtools.Cloudtrace.V2.Span.TimeEvent.Annotation.t() | nil}
            | {:message_event,
               Google.Devtools.Cloudtrace.V2.Span.TimeEvent.MessageEvent.t() | nil},
          time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:value, :time]

  oneof :value, 0

  field :time, 1, type: Google.Protobuf.Timestamp
  field :annotation, 2, type: Google.Devtools.Cloudtrace.V2.Span.TimeEvent.Annotation, oneof: 0

  field :message_event, 3,
    type: Google.Devtools.Cloudtrace.V2.Span.TimeEvent.MessageEvent,
    json_name: "messageEvent",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.Span.TimeEvents do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_event: [Google.Devtools.Cloudtrace.V2.Span.TimeEvent.t()],
          dropped_annotations_count: integer,
          dropped_message_events_count: integer
        }

  defstruct [:time_event, :dropped_annotations_count, :dropped_message_events_count]

  field :time_event, 1,
    repeated: true,
    type: Google.Devtools.Cloudtrace.V2.Span.TimeEvent,
    json_name: "timeEvent"

  field :dropped_annotations_count, 2, type: :int32, json_name: "droppedAnnotationsCount"
  field :dropped_message_events_count, 3, type: :int32, json_name: "droppedMessageEventsCount"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.Span.Link do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trace_id: String.t(),
          span_id: String.t(),
          type: Google.Devtools.Cloudtrace.V2.Span.Link.Type.t(),
          attributes: Google.Devtools.Cloudtrace.V2.Span.Attributes.t() | nil
        }

  defstruct [:trace_id, :span_id, :type, :attributes]

  field :trace_id, 1, type: :string, json_name: "traceId"
  field :span_id, 2, type: :string, json_name: "spanId"
  field :type, 3, type: Google.Devtools.Cloudtrace.V2.Span.Link.Type, enum: true
  field :attributes, 4, type: Google.Devtools.Cloudtrace.V2.Span.Attributes

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.Span.Links do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          link: [Google.Devtools.Cloudtrace.V2.Span.Link.t()],
          dropped_links_count: integer
        }

  defstruct [:link, :dropped_links_count]

  field :link, 1, repeated: true, type: Google.Devtools.Cloudtrace.V2.Span.Link
  field :dropped_links_count, 2, type: :int32, json_name: "droppedLinksCount"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.Span do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          span_id: String.t(),
          parent_span_id: String.t(),
          display_name: Google.Devtools.Cloudtrace.V2.TruncatableString.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          attributes: Google.Devtools.Cloudtrace.V2.Span.Attributes.t() | nil,
          stack_trace: Google.Devtools.Cloudtrace.V2.StackTrace.t() | nil,
          time_events: Google.Devtools.Cloudtrace.V2.Span.TimeEvents.t() | nil,
          links: Google.Devtools.Cloudtrace.V2.Span.Links.t() | nil,
          status: Google.Rpc.Status.t() | nil,
          same_process_as_parent_span: Google.Protobuf.BoolValue.t() | nil,
          child_span_count: Google.Protobuf.Int32Value.t() | nil,
          span_kind: Google.Devtools.Cloudtrace.V2.Span.SpanKind.t()
        }

  defstruct [
    :name,
    :span_id,
    :parent_span_id,
    :display_name,
    :start_time,
    :end_time,
    :attributes,
    :stack_trace,
    :time_events,
    :links,
    :status,
    :same_process_as_parent_span,
    :child_span_count,
    :span_kind
  ]

  field :name, 1, type: :string
  field :span_id, 2, type: :string, json_name: "spanId"
  field :parent_span_id, 3, type: :string, json_name: "parentSpanId"

  field :display_name, 4,
    type: Google.Devtools.Cloudtrace.V2.TruncatableString,
    json_name: "displayName"

  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :attributes, 7, type: Google.Devtools.Cloudtrace.V2.Span.Attributes
  field :stack_trace, 8, type: Google.Devtools.Cloudtrace.V2.StackTrace, json_name: "stackTrace"

  field :time_events, 9,
    type: Google.Devtools.Cloudtrace.V2.Span.TimeEvents,
    json_name: "timeEvents"

  field :links, 10, type: Google.Devtools.Cloudtrace.V2.Span.Links
  field :status, 11, type: Google.Rpc.Status

  field :same_process_as_parent_span, 12,
    type: Google.Protobuf.BoolValue,
    json_name: "sameProcessAsParentSpan"

  field :child_span_count, 13, type: Google.Protobuf.Int32Value, json_name: "childSpanCount"

  field :span_kind, 14,
    type: Google.Devtools.Cloudtrace.V2.Span.SpanKind,
    enum: true,
    json_name: "spanKind"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.AttributeValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:string_value, Google.Devtools.Cloudtrace.V2.TruncatableString.t() | nil}
            | {:int_value, integer}
            | {:bool_value, boolean}
        }

  defstruct [:value]

  oneof :value, 0

  field :string_value, 1,
    type: Google.Devtools.Cloudtrace.V2.TruncatableString,
    json_name: "stringValue",
    oneof: 0

  field :int_value, 2, type: :int64, json_name: "intValue", oneof: 0
  field :bool_value, 3, type: :bool, json_name: "boolValue", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.StackTrace.StackFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          function_name: Google.Devtools.Cloudtrace.V2.TruncatableString.t() | nil,
          original_function_name: Google.Devtools.Cloudtrace.V2.TruncatableString.t() | nil,
          file_name: Google.Devtools.Cloudtrace.V2.TruncatableString.t() | nil,
          line_number: integer,
          column_number: integer,
          load_module: Google.Devtools.Cloudtrace.V2.Module.t() | nil,
          source_version: Google.Devtools.Cloudtrace.V2.TruncatableString.t() | nil
        }

  defstruct [
    :function_name,
    :original_function_name,
    :file_name,
    :line_number,
    :column_number,
    :load_module,
    :source_version
  ]

  field :function_name, 1,
    type: Google.Devtools.Cloudtrace.V2.TruncatableString,
    json_name: "functionName"

  field :original_function_name, 2,
    type: Google.Devtools.Cloudtrace.V2.TruncatableString,
    json_name: "originalFunctionName"

  field :file_name, 3,
    type: Google.Devtools.Cloudtrace.V2.TruncatableString,
    json_name: "fileName"

  field :line_number, 4, type: :int64, json_name: "lineNumber"
  field :column_number, 5, type: :int64, json_name: "columnNumber"
  field :load_module, 6, type: Google.Devtools.Cloudtrace.V2.Module, json_name: "loadModule"

  field :source_version, 7,
    type: Google.Devtools.Cloudtrace.V2.TruncatableString,
    json_name: "sourceVersion"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.StackTrace.StackFrames do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          frame: [Google.Devtools.Cloudtrace.V2.StackTrace.StackFrame.t()],
          dropped_frames_count: integer
        }

  defstruct [:frame, :dropped_frames_count]

  field :frame, 1, repeated: true, type: Google.Devtools.Cloudtrace.V2.StackTrace.StackFrame
  field :dropped_frames_count, 2, type: :int32, json_name: "droppedFramesCount"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.StackTrace do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stack_frames: Google.Devtools.Cloudtrace.V2.StackTrace.StackFrames.t() | nil,
          stack_trace_hash_id: integer
        }

  defstruct [:stack_frames, :stack_trace_hash_id]

  field :stack_frames, 1,
    type: Google.Devtools.Cloudtrace.V2.StackTrace.StackFrames,
    json_name: "stackFrames"

  field :stack_trace_hash_id, 2, type: :int64, json_name: "stackTraceHashId"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.Module do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          module: Google.Devtools.Cloudtrace.V2.TruncatableString.t() | nil,
          build_id: Google.Devtools.Cloudtrace.V2.TruncatableString.t() | nil
        }

  defstruct [:module, :build_id]

  field :module, 1, type: Google.Devtools.Cloudtrace.V2.TruncatableString
  field :build_id, 2, type: Google.Devtools.Cloudtrace.V2.TruncatableString, json_name: "buildId"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudtrace.V2.TruncatableString do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          truncated_byte_count: integer
        }

  defstruct [:value, :truncated_byte_count]

  field :value, 1, type: :string
  field :truncated_byte_count, 2, type: :int32, json_name: "truncatedByteCount"

  def transform_module(), do: nil
end
