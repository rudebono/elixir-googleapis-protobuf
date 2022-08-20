defmodule Google.Devtools.Cloudtrace.V2.Span.SpanKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SPAN_KIND_UNSPECIFIED, 0
  field :INTERNAL, 1
  field :SERVER, 2
  field :CLIENT, 3
  field :PRODUCER, 4
  field :CONSUMER, 5
end

defmodule Google.Devtools.Cloudtrace.V2.Span.TimeEvent.MessageEvent.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SENT, 1
  field :RECEIVED, 2
end

defmodule Google.Devtools.Cloudtrace.V2.Span.Link.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :CHILD_LINKED_SPAN, 1
  field :PARENT_LINKED_SPAN, 2
end

defmodule Google.Devtools.Cloudtrace.V2.Span.Attributes.AttributeMapEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Devtools.Cloudtrace.V2.AttributeValue
end

defmodule Google.Devtools.Cloudtrace.V2.Span.Attributes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attribute_map, 1,
    repeated: true,
    type: Google.Devtools.Cloudtrace.V2.Span.Attributes.AttributeMapEntry,
    json_name: "attributeMap",
    map: true

  field :dropped_attributes_count, 2, type: :int32, json_name: "droppedAttributesCount"
end

defmodule Google.Devtools.Cloudtrace.V2.Span.TimeEvent.Annotation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 1, type: Google.Devtools.Cloudtrace.V2.TruncatableString
  field :attributes, 2, type: Google.Devtools.Cloudtrace.V2.Span.Attributes
end

defmodule Google.Devtools.Cloudtrace.V2.Span.TimeEvent.MessageEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: Google.Devtools.Cloudtrace.V2.Span.TimeEvent.MessageEvent.Type, enum: true
  field :id, 2, type: :int64
  field :uncompressed_size_bytes, 3, type: :int64, json_name: "uncompressedSizeBytes"
  field :compressed_size_bytes, 4, type: :int64, json_name: "compressedSizeBytes"
end

defmodule Google.Devtools.Cloudtrace.V2.Span.TimeEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :time, 1, type: Google.Protobuf.Timestamp
  field :annotation, 2, type: Google.Devtools.Cloudtrace.V2.Span.TimeEvent.Annotation, oneof: 0

  field :message_event, 3,
    type: Google.Devtools.Cloudtrace.V2.Span.TimeEvent.MessageEvent,
    json_name: "messageEvent",
    oneof: 0
end

defmodule Google.Devtools.Cloudtrace.V2.Span.TimeEvents do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :time_event, 1,
    repeated: true,
    type: Google.Devtools.Cloudtrace.V2.Span.TimeEvent,
    json_name: "timeEvent"

  field :dropped_annotations_count, 2, type: :int32, json_name: "droppedAnnotationsCount"
  field :dropped_message_events_count, 3, type: :int32, json_name: "droppedMessageEventsCount"
end

defmodule Google.Devtools.Cloudtrace.V2.Span.Link do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :trace_id, 1, type: :string, json_name: "traceId"
  field :span_id, 2, type: :string, json_name: "spanId"
  field :type, 3, type: Google.Devtools.Cloudtrace.V2.Span.Link.Type, enum: true
  field :attributes, 4, type: Google.Devtools.Cloudtrace.V2.Span.Attributes
end

defmodule Google.Devtools.Cloudtrace.V2.Span.Links do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :link, 1, repeated: true, type: Google.Devtools.Cloudtrace.V2.Span.Link
  field :dropped_links_count, 2, type: :int32, json_name: "droppedLinksCount"
end

defmodule Google.Devtools.Cloudtrace.V2.Span do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :span_id, 2, type: :string, json_name: "spanId", deprecated: false
  field :parent_span_id, 3, type: :string, json_name: "parentSpanId"

  field :display_name, 4,
    type: Google.Devtools.Cloudtrace.V2.TruncatableString,
    json_name: "displayName",
    deprecated: false

  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :attributes, 7, type: Google.Devtools.Cloudtrace.V2.Span.Attributes
  field :stack_trace, 8, type: Google.Devtools.Cloudtrace.V2.StackTrace, json_name: "stackTrace"

  field :time_events, 9,
    type: Google.Devtools.Cloudtrace.V2.Span.TimeEvents,
    json_name: "timeEvents"

  field :links, 10, type: Google.Devtools.Cloudtrace.V2.Span.Links
  field :status, 11, type: Google.Rpc.Status, deprecated: false

  field :same_process_as_parent_span, 12,
    type: Google.Protobuf.BoolValue,
    json_name: "sameProcessAsParentSpan",
    deprecated: false

  field :child_span_count, 13,
    type: Google.Protobuf.Int32Value,
    json_name: "childSpanCount",
    deprecated: false

  field :span_kind, 14,
    type: Google.Devtools.Cloudtrace.V2.Span.SpanKind,
    json_name: "spanKind",
    enum: true,
    deprecated: false
end

defmodule Google.Devtools.Cloudtrace.V2.AttributeValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :string_value, 1,
    type: Google.Devtools.Cloudtrace.V2.TruncatableString,
    json_name: "stringValue",
    oneof: 0

  field :int_value, 2, type: :int64, json_name: "intValue", oneof: 0
  field :bool_value, 3, type: :bool, json_name: "boolValue", oneof: 0
end

defmodule Google.Devtools.Cloudtrace.V2.StackTrace.StackFrame do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Devtools.Cloudtrace.V2.StackTrace.StackFrames do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :frame, 1, repeated: true, type: Google.Devtools.Cloudtrace.V2.StackTrace.StackFrame
  field :dropped_frames_count, 2, type: :int32, json_name: "droppedFramesCount"
end

defmodule Google.Devtools.Cloudtrace.V2.StackTrace do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :stack_frames, 1,
    type: Google.Devtools.Cloudtrace.V2.StackTrace.StackFrames,
    json_name: "stackFrames"

  field :stack_trace_hash_id, 2, type: :int64, json_name: "stackTraceHashId"
end

defmodule Google.Devtools.Cloudtrace.V2.Module do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :module, 1, type: Google.Devtools.Cloudtrace.V2.TruncatableString
  field :build_id, 2, type: Google.Devtools.Cloudtrace.V2.TruncatableString, json_name: "buildId"
end

defmodule Google.Devtools.Cloudtrace.V2.TruncatableString do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :string
  field :truncated_byte_count, 2, type: :int32, json_name: "truncatedByteCount"
end