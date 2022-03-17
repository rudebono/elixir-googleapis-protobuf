defmodule Google.Cloud.Batch.V1alpha1.TaskStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :PENDING | :ASSIGNED | :RUNNING | :FAILED | :SUCCEEDED

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ASSIGNED, 2
  field :RUNNING, 3
  field :FAILED, 4
  field :SUCCEEDED, 5
end
defmodule Google.Cloud.Batch.V1alpha1.LifecyclePolicy.Action do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ACTION_UNSPECIFIED | :RETRY_TASK | :FAIL_TASK

  field :ACTION_UNSPECIFIED, 0
  field :RETRY_TASK, 1
  field :FAIL_TASK, 2
end
defmodule Google.Cloud.Batch.V1alpha1.ComputeResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpu_milli: integer,
          memory_mib: integer,
          gpu_count: integer,
          boot_disk_mib: integer
        }

  defstruct cpu_milli: 0,
            memory_mib: 0,
            gpu_count: 0,
            boot_disk_mib: 0

  field :cpu_milli, 1, type: :int64, json_name: "cpuMilli"
  field :memory_mib, 2, type: :int64, json_name: "memoryMib"
  field :gpu_count, 3, type: :int64, json_name: "gpuCount"
  field :boot_disk_mib, 4, type: :int64, json_name: "bootDiskMib"
end
defmodule Google.Cloud.Batch.V1alpha1.StatusEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          description: String.t(),
          event_time: Google.Protobuf.Timestamp.t() | nil,
          task_execution: Google.Cloud.Batch.V1alpha1.TaskExecution.t() | nil
        }

  defstruct type: "",
            description: "",
            event_time: nil,
            task_execution: nil

  field :type, 3, type: :string
  field :description, 1, type: :string
  field :event_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventTime"

  field :task_execution, 4,
    type: Google.Cloud.Batch.V1alpha1.TaskExecution,
    json_name: "taskExecution"
end
defmodule Google.Cloud.Batch.V1alpha1.TaskExecution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exit_code: integer
        }

  defstruct exit_code: 0

  field :exit_code, 1, type: :int32, json_name: "exitCode"
end
defmodule Google.Cloud.Batch.V1alpha1.TaskStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Batch.V1alpha1.TaskStatus.State.t(),
          status_events: [Google.Cloud.Batch.V1alpha1.StatusEvent.t()]
        }

  defstruct state: :STATE_UNSPECIFIED,
            status_events: []

  field :state, 1, type: Google.Cloud.Batch.V1alpha1.TaskStatus.State, enum: true

  field :status_events, 2,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.StatusEvent,
    json_name: "statusEvents"
end
defmodule Google.Cloud.Batch.V1alpha1.Runnable.Container do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_uri: String.t(),
          commands: [String.t()],
          entrypoint: String.t(),
          volumes: [String.t()],
          options: String.t()
        }

  defstruct image_uri: "",
            commands: [],
            entrypoint: "",
            volumes: [],
            options: ""

  field :image_uri, 1, type: :string, json_name: "imageUri"
  field :commands, 2, repeated: true, type: :string
  field :entrypoint, 3, type: :string
  field :volumes, 7, repeated: true, type: :string
  field :options, 8, type: :string
end
defmodule Google.Cloud.Batch.V1alpha1.Runnable.Script do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          command: {:path, String.t()} | {:text, String.t()}
        }

  defstruct command: nil

  oneof :command, 0

  field :path, 1, type: :string, oneof: 0
  field :text, 2, type: :string, oneof: 0
end
defmodule Google.Cloud.Batch.V1alpha1.Runnable.Barrier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Batch.V1alpha1.Runnable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executable:
            {:container, Google.Cloud.Batch.V1alpha1.Runnable.Container.t() | nil}
            | {:script, Google.Cloud.Batch.V1alpha1.Runnable.Script.t() | nil}
            | {:barrier, Google.Cloud.Batch.V1alpha1.Runnable.Barrier.t() | nil},
          ignore_exit_status: boolean,
          background: boolean,
          always_run: boolean
        }

  defstruct executable: nil,
            ignore_exit_status: false,
            background: false,
            always_run: false

  oneof :executable, 0

  field :container, 1, type: Google.Cloud.Batch.V1alpha1.Runnable.Container, oneof: 0
  field :script, 2, type: Google.Cloud.Batch.V1alpha1.Runnable.Script, oneof: 0
  field :barrier, 6, type: Google.Cloud.Batch.V1alpha1.Runnable.Barrier, oneof: 0
  field :ignore_exit_status, 3, type: :bool, json_name: "ignoreExitStatus"
  field :background, 4, type: :bool
  field :always_run, 5, type: :bool, json_name: "alwaysRun"
end
defmodule Google.Cloud.Batch.V1alpha1.TaskSpec.EnvironmentsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Batch.V1alpha1.TaskSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          runnables: [Google.Cloud.Batch.V1alpha1.Runnable.t()],
          compute_resource: Google.Cloud.Batch.V1alpha1.ComputeResource.t() | nil,
          max_run_duration: Google.Protobuf.Duration.t() | nil,
          max_retry_count: integer,
          lifecycle_policies: [Google.Cloud.Batch.V1alpha1.LifecyclePolicy.t()],
          environments: %{String.t() => String.t()},
          volumes: [Google.Cloud.Batch.V1alpha1.Volume.t()]
        }

  defstruct runnables: [],
            compute_resource: nil,
            max_run_duration: nil,
            max_retry_count: 0,
            lifecycle_policies: [],
            environments: %{},
            volumes: []

  field :runnables, 8, repeated: true, type: Google.Cloud.Batch.V1alpha1.Runnable

  field :compute_resource, 3,
    type: Google.Cloud.Batch.V1alpha1.ComputeResource,
    json_name: "computeResource"

  field :max_run_duration, 4, type: Google.Protobuf.Duration, json_name: "maxRunDuration"
  field :max_retry_count, 5, type: :int32, json_name: "maxRetryCount"

  field :lifecycle_policies, 9,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.LifecyclePolicy,
    json_name: "lifecyclePolicies"

  field :environments, 6,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.TaskSpec.EnvironmentsEntry,
    map: true

  field :volumes, 7, repeated: true, type: Google.Cloud.Batch.V1alpha1.Volume
end
defmodule Google.Cloud.Batch.V1alpha1.LifecyclePolicy.ActionCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exit_codes: [integer]
        }

  defstruct exit_codes: []

  field :exit_codes, 1, repeated: true, type: :int32, json_name: "exitCodes"
end
defmodule Google.Cloud.Batch.V1alpha1.LifecyclePolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action: Google.Cloud.Batch.V1alpha1.LifecyclePolicy.Action.t(),
          action_condition: Google.Cloud.Batch.V1alpha1.LifecyclePolicy.ActionCondition.t() | nil
        }

  defstruct action: :ACTION_UNSPECIFIED,
            action_condition: nil

  field :action, 1, type: Google.Cloud.Batch.V1alpha1.LifecyclePolicy.Action, enum: true

  field :action_condition, 2,
    type: Google.Cloud.Batch.V1alpha1.LifecyclePolicy.ActionCondition,
    json_name: "actionCondition"
end
defmodule Google.Cloud.Batch.V1alpha1.Task do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          status: Google.Cloud.Batch.V1alpha1.TaskStatus.t() | nil
        }

  defstruct name: "",
            status: nil

  field :name, 1, type: :string
  field :status, 2, type: Google.Cloud.Batch.V1alpha1.TaskStatus
end
