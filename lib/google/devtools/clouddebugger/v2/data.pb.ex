defmodule Google.Devtools.Clouddebugger.V2.StatusMessage.Reference do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :BREAKPOINT_SOURCE_LOCATION, 3
  field :BREAKPOINT_CONDITION, 4
  field :BREAKPOINT_EXPRESSION, 7
  field :BREAKPOINT_AGE, 8
  field :VARIABLE_NAME, 5
  field :VARIABLE_VALUE, 6
end

defmodule Google.Devtools.Clouddebugger.V2.Breakpoint.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CAPTURE, 0
  field :LOG, 1
end

defmodule Google.Devtools.Clouddebugger.V2.Breakpoint.LogLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INFO, 0
  field :WARNING, 1
  field :ERROR, 2
end

defmodule Google.Devtools.Clouddebugger.V2.FormatMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :format, 1, type: :string
  field :parameters, 2, repeated: true, type: :string
end

defmodule Google.Devtools.Clouddebugger.V2.StatusMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :is_error, 1, type: :bool, json_name: "isError"

  field :refers_to, 2,
    type: Google.Devtools.Clouddebugger.V2.StatusMessage.Reference,
    json_name: "refersTo",
    enum: true

  field :description, 3, type: Google.Devtools.Clouddebugger.V2.FormatMessage
end

defmodule Google.Devtools.Clouddebugger.V2.SourceLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :path, 1, type: :string
  field :line, 2, type: :int32
  field :column, 3, type: :int32
end

defmodule Google.Devtools.Clouddebugger.V2.Variable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
  field :type, 6, type: :string
  field :members, 3, repeated: true, type: Google.Devtools.Clouddebugger.V2.Variable
  field :var_table_index, 4, type: Google.Protobuf.Int32Value, json_name: "varTableIndex"
  field :status, 5, type: Google.Devtools.Clouddebugger.V2.StatusMessage
end

defmodule Google.Devtools.Clouddebugger.V2.StackFrame do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :function, 1, type: :string
  field :location, 2, type: Google.Devtools.Clouddebugger.V2.SourceLocation
  field :arguments, 3, repeated: true, type: Google.Devtools.Clouddebugger.V2.Variable
  field :locals, 4, repeated: true, type: Google.Devtools.Clouddebugger.V2.Variable
end

defmodule Google.Devtools.Clouddebugger.V2.Breakpoint.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Clouddebugger.V2.Breakpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :action, 13, type: Google.Devtools.Clouddebugger.V2.Breakpoint.Action, enum: true
  field :location, 2, type: Google.Devtools.Clouddebugger.V2.SourceLocation
  field :condition, 3, type: :string
  field :expressions, 4, repeated: true, type: :string
  field :log_message_format, 14, type: :string, json_name: "logMessageFormat"

  field :log_level, 15,
    type: Google.Devtools.Clouddebugger.V2.Breakpoint.LogLevel,
    json_name: "logLevel",
    enum: true

  field :is_final_state, 5, type: :bool, json_name: "isFinalState"
  field :create_time, 11, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :final_time, 12, type: Google.Protobuf.Timestamp, json_name: "finalTime"
  field :user_email, 16, type: :string, json_name: "userEmail"
  field :status, 10, type: Google.Devtools.Clouddebugger.V2.StatusMessage

  field :stack_frames, 7,
    repeated: true,
    type: Google.Devtools.Clouddebugger.V2.StackFrame,
    json_name: "stackFrames"

  field :evaluated_expressions, 8,
    repeated: true,
    type: Google.Devtools.Clouddebugger.V2.Variable,
    json_name: "evaluatedExpressions"

  field :variable_table, 9,
    repeated: true,
    type: Google.Devtools.Clouddebugger.V2.Variable,
    json_name: "variableTable"

  field :labels, 17,
    repeated: true,
    type: Google.Devtools.Clouddebugger.V2.Breakpoint.LabelsEntry,
    map: true
end

defmodule Google.Devtools.Clouddebugger.V2.Debuggee.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Clouddebugger.V2.Debuggee do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :project, 2, type: :string
  field :uniquifier, 3, type: :string
  field :description, 4, type: :string
  field :is_inactive, 5, type: :bool, json_name: "isInactive"
  field :agent_version, 6, type: :string, json_name: "agentVersion"
  field :is_disabled, 7, type: :bool, json_name: "isDisabled"
  field :status, 8, type: Google.Devtools.Clouddebugger.V2.StatusMessage

  field :source_contexts, 9,
    repeated: true,
    type: Google.Devtools.Source.V1.SourceContext,
    json_name: "sourceContexts"

  field :ext_source_contexts, 13,
    repeated: true,
    type: Google.Devtools.Source.V1.ExtendedSourceContext,
    json_name: "extSourceContexts",
    deprecated: true

  field :labels, 11,
    repeated: true,
    type: Google.Devtools.Clouddebugger.V2.Debuggee.LabelsEntry,
    map: true
end
