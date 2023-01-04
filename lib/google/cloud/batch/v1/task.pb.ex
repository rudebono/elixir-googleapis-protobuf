defmodule Google.Cloud.Batch.V1.TaskStatus.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ASSIGNED, 2
  field :RUNNING, 3
  field :FAILED, 4
  field :SUCCEEDED, 5
end

defmodule Google.Cloud.Batch.V1.LifecyclePolicy.Action do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :RETRY_TASK, 1
  field :FAIL_TASK, 2
end

defmodule Google.Cloud.Batch.V1.ComputeResource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cpu_milli, 1, type: :int64, json_name: "cpuMilli"
  field :memory_mib, 2, type: :int64, json_name: "memoryMib"
  field :boot_disk_mib, 4, type: :int64, json_name: "bootDiskMib"
end

defmodule Google.Cloud.Batch.V1.StatusEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 3, type: :string
  field :description, 1, type: :string
  field :event_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :task_execution, 4, type: Google.Cloud.Batch.V1.TaskExecution, json_name: "taskExecution"
end

defmodule Google.Cloud.Batch.V1.TaskExecution do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exit_code, 1, type: :int32, json_name: "exitCode"
end

defmodule Google.Cloud.Batch.V1.TaskStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Batch.V1.TaskStatus.State, enum: true

  field :status_events, 2,
    repeated: true,
    type: Google.Cloud.Batch.V1.StatusEvent,
    json_name: "statusEvents"
end

defmodule Google.Cloud.Batch.V1.Runnable.Container do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :image_uri, 1, type: :string, json_name: "imageUri"
  field :commands, 2, repeated: true, type: :string
  field :entrypoint, 3, type: :string
  field :volumes, 7, repeated: true, type: :string
  field :options, 8, type: :string
  field :block_external_network, 9, type: :bool, json_name: "blockExternalNetwork"
  field :username, 10, type: :string
  field :password, 11, type: :string
end

defmodule Google.Cloud.Batch.V1.Runnable.Script do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :command, 0

  field :path, 1, type: :string, oneof: 0
  field :text, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Batch.V1.Runnable.Barrier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Batch.V1.Runnable do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :executable, 0

  field :container, 1, type: Google.Cloud.Batch.V1.Runnable.Container, oneof: 0
  field :script, 2, type: Google.Cloud.Batch.V1.Runnable.Script, oneof: 0
  field :barrier, 6, type: Google.Cloud.Batch.V1.Runnable.Barrier, oneof: 0
  field :ignore_exit_status, 3, type: :bool, json_name: "ignoreExitStatus"
  field :background, 4, type: :bool
  field :always_run, 5, type: :bool, json_name: "alwaysRun"
  field :environment, 7, type: Google.Cloud.Batch.V1.Environment
  field :timeout, 8, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Batch.V1.TaskSpec.EnvironmentsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Batch.V1.TaskSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :runnables, 8, repeated: true, type: Google.Cloud.Batch.V1.Runnable

  field :compute_resource, 3,
    type: Google.Cloud.Batch.V1.ComputeResource,
    json_name: "computeResource"

  field :max_run_duration, 4, type: Google.Protobuf.Duration, json_name: "maxRunDuration"
  field :max_retry_count, 5, type: :int32, json_name: "maxRetryCount"

  field :lifecycle_policies, 9,
    repeated: true,
    type: Google.Cloud.Batch.V1.LifecyclePolicy,
    json_name: "lifecyclePolicies"

  field :environments, 6,
    repeated: true,
    type: Google.Cloud.Batch.V1.TaskSpec.EnvironmentsEntry,
    map: true,
    deprecated: true

  field :volumes, 7, repeated: true, type: Google.Cloud.Batch.V1.Volume
  field :environment, 10, type: Google.Cloud.Batch.V1.Environment
end

defmodule Google.Cloud.Batch.V1.LifecyclePolicy.ActionCondition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exit_codes, 1, repeated: true, type: :int32, json_name: "exitCodes"
end

defmodule Google.Cloud.Batch.V1.LifecyclePolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :action, 1, type: Google.Cloud.Batch.V1.LifecyclePolicy.Action, enum: true

  field :action_condition, 2,
    type: Google.Cloud.Batch.V1.LifecyclePolicy.ActionCondition,
    json_name: "actionCondition"
end

defmodule Google.Cloud.Batch.V1.Task do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :status, 2, type: Google.Cloud.Batch.V1.TaskStatus
end

defmodule Google.Cloud.Batch.V1.Environment.KMSEnvMap do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key_name, 1, type: :string, json_name: "keyName"
  field :cipher_text, 2, type: :string, json_name: "cipherText"
end

defmodule Google.Cloud.Batch.V1.Environment.VariablesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Batch.V1.Environment.SecretVariablesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Batch.V1.Environment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :variables, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1.Environment.VariablesEntry,
    map: true

  field :secret_variables, 2,
    repeated: true,
    type: Google.Cloud.Batch.V1.Environment.SecretVariablesEntry,
    json_name: "secretVariables",
    map: true

  field :encrypted_variables, 3,
    type: Google.Cloud.Batch.V1.Environment.KMSEnvMap,
    json_name: "encryptedVariables"
end