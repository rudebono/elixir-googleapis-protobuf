defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReceiveTaskNotificationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
  field :agent_version, 2, type: :string, json_name: "agentVersion", deprecated: false
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReceiveTaskNotificationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.StartNextTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.StartNextTaskResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :task, 1, type: Google.Cloud.Osconfig.Agentendpoint.V1.Task
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskProgressRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :progress, 0

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
  field :task_id, 2, type: :string, json_name: "taskId", deprecated: false

  field :task_type, 3,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskType,
    json_name: "taskType",
    enum: true,
    deprecated: false

  field :apply_patches_task_progress, 4,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskProgress,
    json_name: "applyPatchesTaskProgress",
    oneof: 0

  field :exec_step_task_progress, 5,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskProgress,
    json_name: "execStepTaskProgress",
    oneof: 0

  field :apply_config_task_progress, 6,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskProgress,
    json_name: "applyConfigTaskProgress",
    oneof: 0
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskProgressResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :task_directive, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskDirective,
    json_name: "taskDirective",
    enum: true
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskCompleteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :output, 0

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
  field :task_id, 2, type: :string, json_name: "taskId", deprecated: false

  field :task_type, 3,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskType,
    json_name: "taskType",
    enum: true,
    deprecated: false

  field :error_message, 4, type: :string, json_name: "errorMessage"

  field :apply_patches_task_output, 5,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskOutput,
    json_name: "applyPatchesTaskOutput",
    oneof: 0

  field :exec_step_task_output, 6,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskOutput,
    json_name: "execStepTaskOutput",
    oneof: 0

  field :apply_config_task_output, 7,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput,
    json_name: "applyConfigTaskOutput",
    oneof: 0
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskCompleteResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.RegisterAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
  field :agent_version, 2, type: :string, json_name: "agentVersion", deprecated: false

  field :supported_capabilities, 3,
    repeated: true,
    type: :string,
    json_name: "supportedCapabilities",
    deprecated: false

  field :os_long_name, 4, type: :string, json_name: "osLongName"
  field :os_short_name, 5, type: :string, json_name: "osShortName"
  field :os_version, 6, type: :string, json_name: "osVersion"
  field :os_architecture, 7, type: :string, json_name: "osArchitecture"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.RegisterAgentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
  field :inventory_checksum, 2, type: :string, json_name: "inventoryChecksum", deprecated: false
  field :inventory, 3, type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory, deprecated: false
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportInventoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :report_full_inventory, 1, type: :bool, json_name: "reportFullInventory"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.AgentEndpointService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.osconfig.agentendpoint.v1.AgentEndpointService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ReceiveTaskNotification,
      Google.Cloud.Osconfig.Agentendpoint.V1.ReceiveTaskNotificationRequest,
      stream(Google.Cloud.Osconfig.Agentendpoint.V1.ReceiveTaskNotificationResponse)

  rpc :StartNextTask,
      Google.Cloud.Osconfig.Agentendpoint.V1.StartNextTaskRequest,
      Google.Cloud.Osconfig.Agentendpoint.V1.StartNextTaskResponse

  rpc :ReportTaskProgress,
      Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskProgressRequest,
      Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskProgressResponse

  rpc :ReportTaskComplete,
      Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskCompleteRequest,
      Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskCompleteResponse

  rpc :RegisterAgent,
      Google.Cloud.Osconfig.Agentendpoint.V1.RegisterAgentRequest,
      Google.Cloud.Osconfig.Agentendpoint.V1.RegisterAgentResponse

  rpc :ReportInventory,
      Google.Cloud.Osconfig.Agentendpoint.V1.ReportInventoryRequest,
      Google.Cloud.Osconfig.Agentendpoint.V1.ReportInventoryResponse
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.AgentEndpointService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Osconfig.Agentendpoint.V1.AgentEndpointService.Service
end