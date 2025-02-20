defmodule Google.Cloud.Osconfig.Agentendpoint.V1.TaskDirective do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TASK_DIRECTIVE_UNSPECIFIED, 0
  field :CONTINUE, 1
  field :STOP, 2
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.TaskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TASK_TYPE_UNSPECIFIED, 0
  field :APPLY_PATCHES, 1
  field :EXEC_STEP_TASK, 2
  field :APPLY_CONFIG_TASK, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskProgress.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 4
  field :DOWNLOADING_PATCHES, 1
  field :APPLYING_PATCHES, 2
  field :REBOOTING, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskOutput.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :SUCCEEDED_REBOOT_REQUIRED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskProgress.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskOutput.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :COMPLETED, 1
  field :TIMED_OUT, 2
  field :CANCELLED, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskProgress.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
  field :APPLYING_CONFIG, 2
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :CANCELLED, 3
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Task.ServiceLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Task do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :task_details, 0

  field :task_id, 1, type: :string, json_name: "taskId"

  field :task_type, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskType,
    json_name: "taskType",
    enum: true

  field :task_directive, 3,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.TaskDirective,
    json_name: "taskDirective",
    enum: true

  field :apply_patches_task, 4,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTask,
    json_name: "applyPatchesTask",
    oneof: 0

  field :exec_step_task, 5,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTask,
    json_name: "execStepTask",
    oneof: 0

  field :apply_config_task, 7,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTask,
    json_name: "applyConfigTask",
    oneof: 0

  field :service_labels, 6,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Task.ServiceLabelsEntry,
    json_name: "serviceLabels",
    map: true
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :patch_config, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.PatchConfig,
    json_name: "patchConfig"

  field :dry_run, 3, type: :bool, json_name: "dryRun"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskProgress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskProgress.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyPatchesTaskOutput.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :exec_step, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStep,
    json_name: "execStep"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskProgress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskProgress.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ExecStepTaskOutput.State,
    enum: true,
    deprecated: false

  field :exit_code, 2, type: :int32, json_name: "exitCode", deprecated: false
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTask.OSPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :mode, 2, type: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicy.Mode, enum: true

  field :os_policy_assignment, 3,
    type: :string,
    json_name: "osPolicyAssignment",
    deprecated: false

  field :resources, 4,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicy.Resource
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :os_policies, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTask.OSPolicy,
    json_name: "osPolicies"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskProgress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskProgress.State,
    enum: true
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput.OSPolicyResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :os_policy_id, 1, type: :string, json_name: "osPolicyId"

  field :os_policy_assignment, 2,
    type: :string,
    json_name: "osPolicyAssignment",
    deprecated: false

  field :os_policy_resource_compliances, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceCompliance,
    json_name: "osPolicyResourceCompliances"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput.State,
    enum: true,
    deprecated: false

  field :os_policy_results, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.ApplyConfigTaskOutput.OSPolicyResult,
    json_name: "osPolicyResults"
end
