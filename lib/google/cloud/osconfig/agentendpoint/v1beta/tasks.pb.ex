defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskDirective do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TASK_DIRECTIVE_UNSPECIFIED, 0
  field :CONTINUE, 1
  field :STOP, 2
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TASK_TYPE_UNSPECIFIED, 0
  field :APPLY_PATCHES, 1
  field :EXEC_STEP_TASK, 2
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskProgress.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 4
  field :DOWNLOADING_PATCHES, 1
  field :APPLYING_PATCHES, 2
  field :REBOOTING, 3
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskOutput.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :SUCCEEDED_REBOOT_REQUIRED, 2
  field :FAILED, 3
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskProgress.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskOutput.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :COMPLETED, 1
  field :TIMED_OUT, 2
  field :CANCELLED, 3
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.Task.ServiceLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.Task do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :task_details, 0

  field :task_id, 1, type: :string, json_name: "taskId"

  field :task_type, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskType,
    json_name: "taskType",
    enum: true

  field :task_directive, 3,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.TaskDirective,
    json_name: "taskDirective",
    enum: true

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
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTask do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :patch_config, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.PatchConfig,
    json_name: "patchConfig"

  field :dry_run, 3, type: :bool, json_name: "dryRun"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskProgress do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskProgress.State,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskOutput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ApplyPatchesTaskOutput.State,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTask do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :exec_step, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStep,
    json_name: "execStep"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskProgress do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskProgress.State,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskOutput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ExecStepTaskOutput.State,
    enum: true,
    deprecated: false

  field :exit_code, 2, type: :int32, json_name: "exitCode", deprecated: false
end
