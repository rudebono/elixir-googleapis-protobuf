defmodule Google.Cloud.Osconfig.Agentendpoint.V1.TaskDirective do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TASK_DIRECTIVE_UNSPECIFIED | :CONTINUE | :STOP

  field :TASK_DIRECTIVE_UNSPECIFIED, 0

  field :CONTINUE, 1

  field :STOP, 2
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.TaskType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :TASK_TYPE_UNSPECIFIED | :APPLY_PATCHES | :EXEC_STEP_TASK | :APPLY_CONFIG_TASK

  field :TASK_TYPE_UNSPECIFIED, 0

  field :APPLY_PATCHES, 1

  field :EXEC_STEP_TASK, 2

  field :APPLY_CONFIG_TASK, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskProgress.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :STARTED
          | :DOWNLOADING_PATCHES
          | :APPLYING_PATCHES
          | :REBOOTING

  field :STATE_UNSPECIFIED, 0

  field :STARTED, 4

  field :DOWNLOADING_PATCHES, 1

  field :APPLYING_PATCHES, 2

  field :REBOOTING, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskOutput.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :SUCCEEDED | :SUCCEEDED_REBOOT_REQUIRED | :FAILED

  field :STATE_UNSPECIFIED, 0

  field :SUCCEEDED, 1

  field :SUCCEEDED_REBOOT_REQUIRED, 2

  field :FAILED, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskProgress.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :STARTED

  field :STATE_UNSPECIFIED, 0

  field :STARTED, 1
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskOutput.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :COMPLETED | :TIMED_OUT | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :COMPLETED, 1

  field :TIMED_OUT, 2

  field :CANCELLED, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskProgress.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :STARTED | :APPLYING_CONFIG

  field :STATE_UNSPECIFIED, 0

  field :STARTED, 1

  field :APPLYING_CONFIG, 2
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :SUCCEEDED | :FAILED | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :SUCCEEDED, 1

  field :FAILED, 2

  field :CANCELLED, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Task.ServiceLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Task do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_details: {atom, any},
          task_id: String.t(),
          task_type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskType.t(),
          task_directive: Google.Cloud.Osconfig.Agentendpoint.V1.TaskDirective.t(),
          service_labels: %{String.t() => String.t()}
        }

  defstruct [:task_details, :task_id, :task_type, :task_directive, :service_labels]

  oneof :task_details, 0
  field :task_id, 1, type: :string
  field :task_type, 2, type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskType, enum: true
  field :task_directive, 3, type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskDirective, enum: true

  field :apply_patches_task, 4,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTask,
    oneof: 0

  field :exec_step_task, 5, type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTask, oneof: 0

  field :apply_config_task, 7,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTask,
    oneof: 0

  field :service_labels, 6,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Task.ServiceLabelsEntry,
    map: true
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          patch_config: Google.Cloud.Osconfig.Agentendpoint.V1.PatchConfig.t() | nil,
          dry_run: boolean
        }

  defstruct [:patch_config, :dry_run]

  field :patch_config, 1, type: Google.Cloud.Osconfig.Agentendpoint.V1.PatchConfig
  field :dry_run, 3, type: :bool
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskProgress.State.t()
        }

  defstruct [:state]

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskProgress.State,
    enum: true
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskOutput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskOutput.State.t()
        }

  defstruct [:state]

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskOutput.State,
    enum: true
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exec_step: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStep.t() | nil
        }

  defstruct [:exec_step]

  field :exec_step, 1, type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStep
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskProgress.State.t()
        }

  defstruct [:state]

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskProgress.State,
    enum: true
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskOutput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskOutput.State.t(),
          exit_code: integer
        }

  defstruct [:state, :exit_code]

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskOutput.State,
    enum: true

  field :exit_code, 2, type: :int32
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTask.OSPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          mode: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicy.Mode.t(),
          os_policy_assignment: String.t(),
          resources: [Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicy.Resource.t()]
        }

  defstruct [:id, :mode, :os_policy_assignment, :resources]

  field :id, 1, type: :string
  field :mode, 2, type: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicy.Mode, enum: true
  field :os_policy_assignment, 3, type: :string

  field :resources, 4,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicy.Resource
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_policies: [Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTask.OSPolicy.t()]
        }

  defstruct [:os_policies]

  field :os_policies, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTask.OSPolicy
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskProgress.State.t()
        }

  defstruct [:state]

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskProgress.State,
    enum: true
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput.OSPolicyResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_policy_id: String.t(),
          os_policy_assignment: String.t(),
          os_policy_resource_compliances: [
            Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceCompliance.t()
          ]
        }

  defstruct [:os_policy_id, :os_policy_assignment, :os_policy_resource_compliances]

  field :os_policy_id, 1, type: :string
  field :os_policy_assignment, 2, type: :string

  field :os_policy_resource_compliances, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceCompliance
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput.State.t(),
          os_policy_results: [
            Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput.OSPolicyResult.t()
          ]
        }

  defstruct [:state, :os_policy_results]

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput.State,
    enum: true

  field :os_policy_results, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput.OSPolicyResult
end
