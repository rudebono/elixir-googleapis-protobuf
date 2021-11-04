defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskDirective do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TASK_DIRECTIVE_UNSPECIFIED | :CONTINUE | :STOP

  field :TASK_DIRECTIVE_UNSPECIFIED, 0
  field :CONTINUE, 1
  field :STOP, 2
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TASK_TYPE_UNSPECIFIED | :APPLY_PATCHES | :EXEC_STEP_TASK

  field :TASK_TYPE_UNSPECIFIED, 0
  field :APPLY_PATCHES, 1
  field :EXEC_STEP_TASK, 2
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskProgress.State do
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

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskOutput.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :SUCCEEDED | :SUCCEEDED_REBOOT_REQUIRED | :FAILED

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :SUCCEEDED_REBOOT_REQUIRED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskProgress.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :STARTED

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskOutput.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :COMPLETED | :TIMED_OUT | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :COMPLETED, 1
  field :TIMED_OUT, 2
  field :CANCELLED, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.Task.ServiceLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.Task do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_details:
            {:apply_patches_task,
             Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTask.t() | nil}
            | {:exec_step_task, Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTask.t() | nil},
          task_id: String.t(),
          task_type: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskType.t(),
          task_directive: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskDirective.t(),
          service_labels: %{String.t() => String.t()}
        }

  defstruct [:task_details, :task_id, :task_type, :task_directive, :service_labels]

  oneof :task_details, 0

  field :task_id, 1, type: :string, json_name: "taskId"

  field :task_type, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskType,
    enum: true,
    json_name: "taskType"

  field :task_directive, 3,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskDirective,
    enum: true,
    json_name: "taskDirective"

  field :apply_patches_task, 4,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTask,
    json_name: "applyPatchesTask",
    oneof: 0

  field :exec_step_task, 5,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTask,
    json_name: "execStepTask",
    oneof: 0

  field :service_labels, 6,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.Task.ServiceLabelsEntry,
    json_name: "serviceLabels",
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          patch_config: Google.Cloud.Osconfig.Agentendpoint.V1beta.PatchConfig.t() | nil,
          dry_run: boolean
        }

  defstruct [:patch_config, :dry_run]

  field :patch_config, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.PatchConfig,
    json_name: "patchConfig"

  field :dry_run, 3, type: :bool, json_name: "dryRun"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskProgress.State.t()
        }

  defstruct [:state]

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskProgress.State,
    enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskOutput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskOutput.State.t()
        }

  defstruct [:state]

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskOutput.State,
    enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exec_step: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStep.t() | nil
        }

  defstruct [:exec_step]

  field :exec_step, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStep,
    json_name: "execStep"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskProgress.State.t()
        }

  defstruct [:state]

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskProgress.State,
    enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskOutput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskOutput.State.t(),
          exit_code: integer
        }

  defstruct [:state, :exit_code]

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskOutput.State,
    enum: true

  field :exit_code, 2, type: :int32, json_name: "exitCode"

  def transform_module(), do: nil
end
