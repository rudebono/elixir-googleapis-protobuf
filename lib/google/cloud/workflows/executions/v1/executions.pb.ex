defmodule Google.Cloud.Workflows.Executions.V1.ExecutionView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EXECUTION_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.CallLogLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CALL_LOG_LEVEL_UNSPECIFIED, 0
  field :LOG_ALL_CALLS, 1
  field :LOG_ERRORS_ONLY, 2
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement.Position do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :line, 1, type: :int64
  field :column, 2, type: :int64
  field :length, 3, type: :int64
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :step, 1, type: :string
  field :routine, 2, type: :string

  field :position, 3,
    type: Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement.Position
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.StackTrace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :elements, 1,
    repeated: true,
    type: Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.Error do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :payload, 1, type: :string
  field :context, 2, type: :string

  field :stack_trace, 3,
    type: Google.Cloud.Workflows.Executions.V1.Execution.StackTrace,
    json_name: "stackTrace"
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :state, 4,
    type: Google.Cloud.Workflows.Executions.V1.Execution.State,
    enum: true,
    deprecated: false

  field :argument, 5, type: :string
  field :result, 6, type: :string, deprecated: false
  field :error, 7, type: Google.Cloud.Workflows.Executions.V1.Execution.Error, deprecated: false

  field :workflow_revision_id, 8,
    type: :string,
    json_name: "workflowRevisionId",
    deprecated: false

  field :call_log_level, 9,
    type: Google.Cloud.Workflows.Executions.V1.Execution.CallLogLevel,
    json_name: "callLogLevel",
    enum: true
end

defmodule Google.Cloud.Workflows.Executions.V1.ListExecutionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :view, 4,
    type: Google.Cloud.Workflows.Executions.V1.ExecutionView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Workflows.Executions.V1.ListExecutionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :executions, 1, repeated: true, type: Google.Cloud.Workflows.Executions.V1.Execution
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Workflows.Executions.V1.CreateExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :execution, 2, type: Google.Cloud.Workflows.Executions.V1.Execution, deprecated: false
end

defmodule Google.Cloud.Workflows.Executions.V1.GetExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Workflows.Executions.V1.ExecutionView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Workflows.Executions.V1.CancelExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Workflows.Executions.V1.Executions.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.workflows.executions.v1.Executions",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListExecutions,
      Google.Cloud.Workflows.Executions.V1.ListExecutionsRequest,
      Google.Cloud.Workflows.Executions.V1.ListExecutionsResponse

  rpc :CreateExecution,
      Google.Cloud.Workflows.Executions.V1.CreateExecutionRequest,
      Google.Cloud.Workflows.Executions.V1.Execution

  rpc :GetExecution,
      Google.Cloud.Workflows.Executions.V1.GetExecutionRequest,
      Google.Cloud.Workflows.Executions.V1.Execution

  rpc :CancelExecution,
      Google.Cloud.Workflows.Executions.V1.CancelExecutionRequest,
      Google.Cloud.Workflows.Executions.V1.Execution
end

defmodule Google.Cloud.Workflows.Executions.V1.Executions.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Workflows.Executions.V1.Executions.Service
end