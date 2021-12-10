defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReceiveTaskNotificationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_id_token: String.t(),
          agent_version: String.t()
        }

  defstruct instance_id_token: "",
            agent_version: ""

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
  field :agent_version, 2, type: :string, json_name: "agentVersion", deprecated: false
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReceiveTaskNotificationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1.StartNextTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_id_token: String.t()
        }

  defstruct instance_id_token: ""

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1.StartNextTaskResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task: Google.Cloud.Osconfig.Agentendpoint.V1.Task.t() | nil
        }

  defstruct task: nil

  field :task, 1, type: Google.Cloud.Osconfig.Agentendpoint.V1.Task
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskProgressRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress:
            {:apply_patches_task_progress,
             Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskProgress.t() | nil}
            | {:exec_step_task_progress,
               Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskProgress.t() | nil}
            | {:apply_config_task_progress,
               Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskProgress.t() | nil},
          instance_id_token: String.t(),
          task_id: String.t(),
          task_type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskType.t()
        }

  defstruct progress: nil,
            instance_id_token: "",
            task_id: "",
            task_type: :TASK_TYPE_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_directive: Google.Cloud.Osconfig.Agentendpoint.V1.TaskDirective.t()
        }

  defstruct task_directive: :TASK_DIRECTIVE_UNSPECIFIED

  field :task_directive, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskDirective,
    json_name: "taskDirective",
    enum: true
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskCompleteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output:
            {:apply_patches_task_output,
             Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskOutput.t() | nil}
            | {:exec_step_task_output,
               Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskOutput.t() | nil}
            | {:apply_config_task_output,
               Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput.t() | nil},
          instance_id_token: String.t(),
          task_id: String.t(),
          task_type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskType.t(),
          error_message: String.t()
        }

  defstruct output: nil,
            instance_id_token: "",
            task_id: "",
            task_type: :TASK_TYPE_UNSPECIFIED,
            error_message: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1.RegisterAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_id_token: String.t(),
          agent_version: String.t(),
          supported_capabilities: [String.t()],
          os_long_name: String.t(),
          os_short_name: String.t(),
          os_version: String.t(),
          os_architecture: String.t()
        }

  defstruct instance_id_token: "",
            agent_version: "",
            supported_capabilities: [],
            os_long_name: "",
            os_short_name: "",
            os_version: "",
            os_architecture: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportInventoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_id_token: String.t(),
          inventory_checksum: String.t(),
          inventory: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.t() | nil
        }

  defstruct instance_id_token: "",
            inventory_checksum: "",
            inventory: nil

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
  field :inventory_checksum, 2, type: :string, json_name: "inventoryChecksum", deprecated: false
  field :inventory, 3, type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory, deprecated: false
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportInventoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          report_full_inventory: boolean
        }

  defstruct report_full_inventory: false

  field :report_full_inventory, 1, type: :bool, json_name: "reportFullInventory"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1.AgentEndpointService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.osconfig.agentendpoint.v1.AgentEndpointService"

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
