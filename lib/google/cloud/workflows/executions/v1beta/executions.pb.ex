defmodule Google.Cloud.Workflows.Executions.V1beta.ExecutionView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :EXECUTION_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end
defmodule Google.Cloud.Workflows.Executions.V1beta.Execution.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
end
defmodule Google.Cloud.Workflows.Executions.V1beta.Execution.Error do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :payload, 1, type: :string
  field :context, 2, type: :string
end
defmodule Google.Cloud.Workflows.Executions.V1beta.Execution do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :state, 4,
    type: Google.Cloud.Workflows.Executions.V1beta.Execution.State,
    enum: true,
    deprecated: false

  field :argument, 5, type: :string
  field :result, 6, type: :string, deprecated: false

  field :error, 7,
    type: Google.Cloud.Workflows.Executions.V1beta.Execution.Error,
    deprecated: false

  field :workflow_revision_id, 8,
    type: :string,
    json_name: "workflowRevisionId",
    deprecated: false
end
defmodule Google.Cloud.Workflows.Executions.V1beta.ListExecutionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :view, 4,
    type: Google.Cloud.Workflows.Executions.V1beta.ExecutionView,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Workflows.Executions.V1beta.ListExecutionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :executions, 1, repeated: true, type: Google.Cloud.Workflows.Executions.V1beta.Execution
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Workflows.Executions.V1beta.CreateExecutionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :execution, 2, type: Google.Cloud.Workflows.Executions.V1beta.Execution, deprecated: false
end
defmodule Google.Cloud.Workflows.Executions.V1beta.GetExecutionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Workflows.Executions.V1beta.ExecutionView,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Workflows.Executions.V1beta.CancelExecutionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Workflows.Executions.V1beta.Executions.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.workflows.executions.v1beta.Executions",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListExecutions,
      Google.Cloud.Workflows.Executions.V1beta.ListExecutionsRequest,
      Google.Cloud.Workflows.Executions.V1beta.ListExecutionsResponse

  rpc :CreateExecution,
      Google.Cloud.Workflows.Executions.V1beta.CreateExecutionRequest,
      Google.Cloud.Workflows.Executions.V1beta.Execution

  rpc :GetExecution,
      Google.Cloud.Workflows.Executions.V1beta.GetExecutionRequest,
      Google.Cloud.Workflows.Executions.V1beta.Execution

  rpc :CancelExecution,
      Google.Cloud.Workflows.Executions.V1beta.CancelExecutionRequest,
      Google.Cloud.Workflows.Executions.V1beta.Execution
end

defmodule Google.Cloud.Workflows.Executions.V1beta.Executions.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Workflows.Executions.V1beta.Executions.Service
end
