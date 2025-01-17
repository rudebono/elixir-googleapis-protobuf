defmodule Google.Cloud.Workflows.Executions.V1.ExecutionView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EXECUTION_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
  field :UNAVAILABLE, 5
  field :QUEUED, 6
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.CallLogLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CALL_LOG_LEVEL_UNSPECIFIED, 0
  field :LOG_ALL_CALLS, 1
  field :LOG_ERRORS_ONLY, 2
  field :LOG_NONE, 3
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.StateError.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :KMS_ERROR, 1
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement.Position do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :line, 1, type: :int64
  field :column, 2, type: :int64
  field :length, 3, type: :int64
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :step, 1, type: :string
  field :routine, 2, type: :string

  field :position, 3,
    type: Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement.Position
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.StackTrace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :elements, 1,
    repeated: true,
    type: Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.Error do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :payload, 1, type: :string
  field :context, 2, type: :string

  field :stack_trace, 3,
    type: Google.Cloud.Workflows.Executions.V1.Execution.StackTrace,
    json_name: "stackTrace"
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.Status.Step do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :routine, 1, type: :string
  field :step, 2, type: :string
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.Status do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :current_steps, 1,
    repeated: true,
    type: Google.Cloud.Workflows.Executions.V1.Execution.Status.Step,
    json_name: "currentSteps"
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.StateError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :details, 1, type: :string
  field :type, 2, type: Google.Cloud.Workflows.Executions.V1.Execution.StateError.Type, enum: true
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :duration, 12, type: Google.Protobuf.Duration, deprecated: false

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

  field :status, 10,
    type: Google.Cloud.Workflows.Executions.V1.Execution.Status,
    deprecated: false

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Workflows.Executions.V1.Execution.LabelsEntry,
    map: true

  field :state_error, 13,
    type: Google.Cloud.Workflows.Executions.V1.Execution.StateError,
    json_name: "stateError",
    deprecated: false
end

defmodule Google.Cloud.Workflows.Executions.V1.ListExecutionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :view, 4,
    type: Google.Cloud.Workflows.Executions.V1.ExecutionView,
    enum: true,
    deprecated: false

  field :filter, 5, type: :string, deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Workflows.Executions.V1.ListExecutionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :executions, 1, repeated: true, type: Google.Cloud.Workflows.Executions.V1.Execution
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Workflows.Executions.V1.CreateExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :execution, 2, type: Google.Cloud.Workflows.Executions.V1.Execution, deprecated: false
end

defmodule Google.Cloud.Workflows.Executions.V1.GetExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Workflows.Executions.V1.ExecutionView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Workflows.Executions.V1.CancelExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Workflows.Executions.V1.Executions.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.workflows.executions.v1.Executions",
    protoc_gen_elixir_version: "0.14.0"

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
