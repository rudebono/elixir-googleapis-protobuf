defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReceiveTaskNotificationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_id_token: String.t(),
          agent_version: String.t()
        }

  defstruct [:instance_id_token, :agent_version]

  field :instance_id_token, 1, type: :string
  field :agent_version, 2, type: :string
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

  defstruct [:instance_id_token]

  field :instance_id_token, 1, type: :string
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.StartNextTaskResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task: Google.Cloud.Osconfig.Agentendpoint.V1.Task.t() | nil
        }

  defstruct [:task]

  field :task, 1, type: Google.Cloud.Osconfig.Agentendpoint.V1.Task
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskProgressRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress: {atom, any},
          instance_id_token: String.t(),
          task_id: String.t(),
          task_type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskType.t()
        }

  defstruct [:progress, :instance_id_token, :task_id, :task_type]

  oneof :progress, 0
  field :instance_id_token, 1, type: :string
  field :task_id, 2, type: :string
  field :task_type, 3, type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskType, enum: true

  field :apply_patches_task_progress, 4,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskProgress,
    oneof: 0

  field :exec_step_task_progress, 5,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskProgress,
    oneof: 0

  field :apply_config_task_progress, 6,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskProgress,
    oneof: 0
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskProgressResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_directive: Google.Cloud.Osconfig.Agentendpoint.V1.TaskDirective.t()
        }

  defstruct [:task_directive]

  field :task_directive, 1, type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskDirective, enum: true
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportTaskCompleteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output: {atom, any},
          instance_id_token: String.t(),
          task_id: String.t(),
          task_type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskType.t(),
          error_message: String.t()
        }

  defstruct [:output, :instance_id_token, :task_id, :task_type, :error_message]

  oneof :output, 0
  field :instance_id_token, 1, type: :string
  field :task_id, 2, type: :string
  field :task_type, 3, type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskType, enum: true
  field :error_message, 4, type: :string

  field :apply_patches_task_output, 5,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskOutput,
    oneof: 0

  field :exec_step_task_output, 6,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskOutput,
    oneof: 0

  field :apply_config_task_output, 7,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput,
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
          supported_capabilities: [String.t()]
        }

  defstruct [:instance_id_token, :agent_version, :supported_capabilities]

  field :instance_id_token, 1, type: :string
  field :agent_version, 2, type: :string
  field :supported_capabilities, 3, repeated: true, type: :string
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

  defstruct [:instance_id_token, :inventory_checksum, :inventory]

  field :instance_id_token, 1, type: :string
  field :inventory_checksum, 2, type: :string
  field :inventory, 3, type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ReportInventoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          report_full_inventory: boolean
        }

  defstruct [:report_full_inventory]

  field :report_full_inventory, 1, type: :bool
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
