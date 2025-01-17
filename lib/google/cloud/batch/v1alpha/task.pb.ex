defmodule Google.Cloud.Batch.V1alpha.TaskStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ASSIGNED, 2
  field :RUNNING, 3
  field :FAILED, 4
  field :SUCCEEDED, 5
  field :UNEXECUTED, 6
end

defmodule Google.Cloud.Batch.V1alpha.LifecyclePolicy.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :RETRY_TASK, 1
  field :FAIL_TASK, 2
end

defmodule Google.Cloud.Batch.V1alpha.ComputeResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cpu_milli, 1, type: :int64, json_name: "cpuMilli"
  field :memory_mib, 2, type: :int64, json_name: "memoryMib"
  field :gpu_count, 3, type: :int64, json_name: "gpuCount"
  field :boot_disk_mib, 4, type: :int64, json_name: "bootDiskMib"
end

defmodule Google.Cloud.Batch.V1alpha.StatusEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type, 3, type: :string
  field :description, 1, type: :string
  field :event_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventTime"

  field :task_execution, 4,
    type: Google.Cloud.Batch.V1alpha.TaskExecution,
    json_name: "taskExecution"

  field :task_state, 5,
    type: Google.Cloud.Batch.V1alpha.TaskStatus.State,
    json_name: "taskState",
    enum: true
end

defmodule Google.Cloud.Batch.V1alpha.TaskExecution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :exit_code, 1, type: :int32, json_name: "exitCode"
  field :stderr_snippet, 2, type: :string, json_name: "stderrSnippet", deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.TaskStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Batch.V1alpha.TaskStatus.State, enum: true

  field :status_events, 2,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.StatusEvent,
    json_name: "statusEvents"

  field :resource_usage, 3,
    type: Google.Cloud.Batch.V1alpha.TaskResourceUsage,
    json_name: "resourceUsage"
end

defmodule Google.Cloud.Batch.V1alpha.TaskResourceUsage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :core_hours, 1, type: :double, json_name: "coreHours"
end

defmodule Google.Cloud.Batch.V1alpha.Runnable.Container do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :image_uri, 1, type: :string, json_name: "imageUri"
  field :commands, 2, repeated: true, type: :string
  field :entrypoint, 3, type: :string
  field :volumes, 7, repeated: true, type: :string
  field :options, 8, type: :string
  field :block_external_network, 9, type: :bool, json_name: "blockExternalNetwork"
  field :username, 10, type: :string
  field :password, 11, type: :string

  field :enable_image_streaming, 12,
    type: :bool,
    json_name: "enableImageStreaming",
    deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.Runnable.Script do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :command, 0

  field :path, 1, type: :string, oneof: 0
  field :text, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Batch.V1alpha.Runnable.Barrier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.Runnable.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.Runnable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :executable, 0

  field :container, 1, type: Google.Cloud.Batch.V1alpha.Runnable.Container, oneof: 0
  field :script, 2, type: Google.Cloud.Batch.V1alpha.Runnable.Script, oneof: 0
  field :barrier, 6, type: Google.Cloud.Batch.V1alpha.Runnable.Barrier, oneof: 0
  field :display_name, 10, type: :string, json_name: "displayName", deprecated: false
  field :ignore_exit_status, 3, type: :bool, json_name: "ignoreExitStatus"
  field :background, 4, type: :bool
  field :always_run, 5, type: :bool, json_name: "alwaysRun"
  field :environment, 7, type: Google.Cloud.Batch.V1alpha.Environment
  field :timeout, 8, type: Google.Protobuf.Duration

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.Runnable.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Batch.V1alpha.TaskSpec.EnvironmentsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.TaskSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :runnables, 8, repeated: true, type: Google.Cloud.Batch.V1alpha.Runnable

  field :compute_resource, 3,
    type: Google.Cloud.Batch.V1alpha.ComputeResource,
    json_name: "computeResource"

  field :max_run_duration, 4, type: Google.Protobuf.Duration, json_name: "maxRunDuration"
  field :max_retry_count, 5, type: :int32, json_name: "maxRetryCount"

  field :lifecycle_policies, 9,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.LifecyclePolicy,
    json_name: "lifecyclePolicies"

  field :environments, 6,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.TaskSpec.EnvironmentsEntry,
    map: true,
    deprecated: true

  field :volumes, 7, repeated: true, type: Google.Cloud.Batch.V1alpha.Volume
  field :environment, 10, type: Google.Cloud.Batch.V1alpha.Environment
end

defmodule Google.Cloud.Batch.V1alpha.LifecyclePolicy.ActionCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :exit_codes, 1, repeated: true, type: :int32, json_name: "exitCodes"
end

defmodule Google.Cloud.Batch.V1alpha.LifecyclePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :action, 1, type: Google.Cloud.Batch.V1alpha.LifecyclePolicy.Action, enum: true

  field :action_condition, 2,
    type: Google.Cloud.Batch.V1alpha.LifecyclePolicy.ActionCondition,
    json_name: "actionCondition"
end

defmodule Google.Cloud.Batch.V1alpha.Task do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :status, 2, type: Google.Cloud.Batch.V1alpha.TaskStatus
end

defmodule Google.Cloud.Batch.V1alpha.Environment.KMSEnvMap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key_name, 1, type: :string, json_name: "keyName"
  field :cipher_text, 2, type: :string, json_name: "cipherText"
end

defmodule Google.Cloud.Batch.V1alpha.Environment.VariablesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.Environment.SecretVariablesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.Environment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :variables, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.Environment.VariablesEntry,
    map: true

  field :secret_variables, 2,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.Environment.SecretVariablesEntry,
    json_name: "secretVariables",
    map: true

  field :encrypted_variables, 3,
    type: Google.Cloud.Batch.V1alpha.Environment.KMSEnvMap,
    json_name: "encryptedVariables"
end
