defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ReceiveTaskNotificationRequest do
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
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ReceiveTaskNotificationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.StartNextTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_id_token: String.t()
        }

  defstruct instance_id_token: ""

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.StartNextTaskResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task: Google.Cloud.Osconfig.Agentendpoint.V1beta.Task.t() | nil
        }

  defstruct task: nil

  field :task, 1, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.Task
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ReportTaskProgressRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress:
            {:apply_patches_task_progress,
             Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskProgress.t() | nil}
            | {:exec_step_task_progress,
               Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskProgress.t() | nil},
          instance_id_token: String.t(),
          task_id: String.t(),
          task_type: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskType.t()
        }

  defstruct progress: nil,
            instance_id_token: "",
            task_id: "",
            task_type: :TASK_TYPE_UNSPECIFIED

  oneof :progress, 0

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
  field :task_id, 2, type: :string, json_name: "taskId", deprecated: false

  field :task_type, 3,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskType,
    json_name: "taskType",
    enum: true,
    deprecated: false

  field :apply_patches_task_progress, 4,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskProgress,
    json_name: "applyPatchesTaskProgress",
    oneof: 0

  field :exec_step_task_progress, 5,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskProgress,
    json_name: "execStepTaskProgress",
    oneof: 0
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ReportTaskProgressResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_directive: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskDirective.t()
        }

  defstruct task_directive: :TASK_DIRECTIVE_UNSPECIFIED

  field :task_directive, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskDirective,
    json_name: "taskDirective",
    enum: true
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ReportTaskCompleteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output:
            {:apply_patches_task_output,
             Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskOutput.t() | nil}
            | {:exec_step_task_output,
               Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskOutput.t() | nil},
          instance_id_token: String.t(),
          task_id: String.t(),
          task_type: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskType.t(),
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
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskType,
    json_name: "taskType",
    enum: true,
    deprecated: false

  field :error_message, 4, type: :string, json_name: "errorMessage"

  field :apply_patches_task_output, 5,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskOutput,
    json_name: "applyPatchesTaskOutput",
    oneof: 0

  field :exec_step_task_output, 6,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskOutput,
    json_name: "execStepTaskOutput",
    oneof: 0
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ReportTaskCompleteResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.RegisterAgentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_id_token: String.t(),
          agent_version: String.t(),
          supported_capabilities: [String.t()]
        }

  defstruct instance_id_token: "",
            agent_version: "",
            supported_capabilities: []

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
  field :agent_version, 2, type: :string, json_name: "agentVersion", deprecated: false

  field :supported_capabilities, 3,
    repeated: true,
    type: :string,
    json_name: "supportedCapabilities",
    deprecated: false
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.RegisterAgentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.AgentEndpointService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.osconfig.agentendpoint.v1beta.AgentEndpointService"

  rpc :ReceiveTaskNotification,
      Google.Cloud.Osconfig.Agentendpoint.V1beta.ReceiveTaskNotificationRequest,
      stream(Google.Cloud.Osconfig.Agentendpoint.V1beta.ReceiveTaskNotificationResponse)

  rpc :StartNextTask,
      Google.Cloud.Osconfig.Agentendpoint.V1beta.StartNextTaskRequest,
      Google.Cloud.Osconfig.Agentendpoint.V1beta.StartNextTaskResponse

  rpc :ReportTaskProgress,
      Google.Cloud.Osconfig.Agentendpoint.V1beta.ReportTaskProgressRequest,
      Google.Cloud.Osconfig.Agentendpoint.V1beta.ReportTaskProgressResponse

  rpc :ReportTaskComplete,
      Google.Cloud.Osconfig.Agentendpoint.V1beta.ReportTaskCompleteRequest,
      Google.Cloud.Osconfig.Agentendpoint.V1beta.ReportTaskCompleteResponse

  rpc :LookupEffectiveGuestPolicy,
      Google.Cloud.Osconfig.Agentendpoint.V1beta.LookupEffectiveGuestPolicyRequest,
      Google.Cloud.Osconfig.Agentendpoint.V1beta.EffectiveGuestPolicy

  rpc :RegisterAgent,
      Google.Cloud.Osconfig.Agentendpoint.V1beta.RegisterAgentRequest,
      Google.Cloud.Osconfig.Agentendpoint.V1beta.RegisterAgentResponse
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.AgentEndpointService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Osconfig.Agentendpoint.V1beta.AgentEndpointService.Service
end
