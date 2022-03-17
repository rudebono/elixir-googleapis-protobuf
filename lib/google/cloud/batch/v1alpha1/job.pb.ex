defmodule Google.Cloud.Batch.V1alpha1.Job.SchedulingPolicy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SCHEDULING_POLICY_UNSPECIFIED | :AS_SOON_AS_POSSIBLE

  field :SCHEDULING_POLICY_UNSPECIFIED, 0
  field :AS_SOON_AS_POSSIBLE, 1
end
defmodule Google.Cloud.Batch.V1alpha1.LogsPolicy.Destination do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DESTINATION_UNSPECIFIED | :CLOUD_LOGGING | :PATH

  field :DESTINATION_UNSPECIFIED, 0
  field :CLOUD_LOGGING, 1
  field :PATH, 2
end
defmodule Google.Cloud.Batch.V1alpha1.JobDependency.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :SUCCEEDED | :FAILED | :FINISHED

  field :TYPE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :FINISHED, 3
end
defmodule Google.Cloud.Batch.V1alpha1.JobStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :QUEUED
          | :SCHEDULED
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :DELETION_IN_PROGRESS

  field :STATE_UNSPECIFIED, 0
  field :QUEUED, 1
  field :SCHEDULED, 2
  field :RUNNING, 3
  field :SUCCEEDED, 4
  field :FAILED, 5
  field :DELETION_IN_PROGRESS, 6
end
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy.ProvisioningModel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PROVISIONING_MODEL_UNSPECIFIED | :STANDARD | :SPOT | :PREEMPTIBLE

  field :PROVISIONING_MODEL_UNSPECIFIED, 0
  field :STANDARD, 1
  field :SPOT, 2
  field :PREEMPTIBLE, 3
end
defmodule Google.Cloud.Batch.V1alpha1.TaskGroup.SchedulingPolicy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SCHEDULING_POLICY_UNSPECIFIED | :AS_SOON_AS_POSSIBLE

  field :SCHEDULING_POLICY_UNSPECIFIED, 0
  field :AS_SOON_AS_POSSIBLE, 1
end
defmodule Google.Cloud.Batch.V1alpha1.Job.LabelsEntry do
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
defmodule Google.Cloud.Batch.V1alpha1.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uid: String.t(),
          priority: integer,
          task_groups: [Google.Cloud.Batch.V1alpha1.TaskGroup.t()],
          scheduling_policy: Google.Cloud.Batch.V1alpha1.Job.SchedulingPolicy.t(),
          dependencies: [Google.Cloud.Batch.V1alpha1.JobDependency.t()],
          allocation_policy: Google.Cloud.Batch.V1alpha1.AllocationPolicy.t() | nil,
          labels: %{String.t() => String.t()},
          status: Google.Cloud.Batch.V1alpha1.JobStatus.t() | nil,
          notification: Google.Cloud.Batch.V1alpha1.JobNotification.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          logs_policy: Google.Cloud.Batch.V1alpha1.LogsPolicy.t() | nil
        }

  defstruct name: "",
            uid: "",
            priority: 0,
            task_groups: [],
            scheduling_policy: :SCHEDULING_POLICY_UNSPECIFIED,
            dependencies: [],
            allocation_policy: nil,
            labels: %{},
            status: nil,
            notification: nil,
            create_time: nil,
            update_time: nil,
            logs_policy: nil

  field :name, 1, type: :string
  field :uid, 2, type: :string, deprecated: false
  field :priority, 3, type: :int64

  field :task_groups, 4,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.TaskGroup,
    json_name: "taskGroups",
    deprecated: false

  field :scheduling_policy, 5,
    type: Google.Cloud.Batch.V1alpha1.Job.SchedulingPolicy,
    json_name: "schedulingPolicy",
    enum: true

  field :dependencies, 6, repeated: true, type: Google.Cloud.Batch.V1alpha1.JobDependency

  field :allocation_policy, 7,
    type: Google.Cloud.Batch.V1alpha1.AllocationPolicy,
    json_name: "allocationPolicy"

  field :labels, 8, repeated: true, type: Google.Cloud.Batch.V1alpha1.Job.LabelsEntry, map: true
  field :status, 9, type: Google.Cloud.Batch.V1alpha1.JobStatus, deprecated: false
  field :notification, 10, type: Google.Cloud.Batch.V1alpha1.JobNotification
  field :create_time, 11, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 12, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :logs_policy, 13, type: Google.Cloud.Batch.V1alpha1.LogsPolicy, json_name: "logsPolicy"
end
defmodule Google.Cloud.Batch.V1alpha1.LogsPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: Google.Cloud.Batch.V1alpha1.LogsPolicy.Destination.t(),
          logs_path: String.t()
        }

  defstruct destination: :DESTINATION_UNSPECIFIED,
            logs_path: ""

  field :destination, 1, type: Google.Cloud.Batch.V1alpha1.LogsPolicy.Destination, enum: true
  field :logs_path, 2, type: :string, json_name: "logsPath"
end
defmodule Google.Cloud.Batch.V1alpha1.JobDependency.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Batch.V1alpha1.JobDependency.Type.t()
        }

  defstruct key: "",
            value: :TYPE_UNSPECIFIED

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Batch.V1alpha1.JobDependency.Type, enum: true
end
defmodule Google.Cloud.Batch.V1alpha1.JobDependency do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: %{String.t() => Google.Cloud.Batch.V1alpha1.JobDependency.Type.t()}
        }

  defstruct items: %{}

  field :items, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.JobDependency.ItemsEntry,
    map: true
end
defmodule Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupStatus.CountsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct key: "",
            value: 0

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          counts: %{String.t() => integer}
        }

  defstruct counts: %{}

  field :counts, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupStatus.CountsEntry,
    map: true
end
defmodule Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupStatus.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupStatus
end
defmodule Google.Cloud.Batch.V1alpha1.JobStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Batch.V1alpha1.JobStatus.State.t(),
          status_events: [Google.Cloud.Batch.V1alpha1.StatusEvent.t()],
          task_groups: %{
            String.t() => Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupStatus.t() | nil
          },
          run_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct state: :STATE_UNSPECIFIED,
            status_events: [],
            task_groups: %{},
            run_duration: nil

  field :state, 1, type: Google.Cloud.Batch.V1alpha1.JobStatus.State, enum: true

  field :status_events, 2,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.StatusEvent,
    json_name: "statusEvents"

  field :task_groups, 4,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupsEntry,
    json_name: "taskGroups",
    map: true

  field :run_duration, 5, type: Google.Protobuf.Duration, json_name: "runDuration"
end
defmodule Google.Cloud.Batch.V1alpha1.JobNotification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pubsub_topic: String.t()
        }

  defstruct pubsub_topic: ""

  field :pubsub_topic, 1, type: :string, json_name: "pubsubTopic"
end
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy.LocationPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_locations: [String.t()],
          denied_locations: [String.t()]
        }

  defstruct allowed_locations: [],
            denied_locations: []

  field :allowed_locations, 1, repeated: true, type: :string, json_name: "allowedLocations"
  field :denied_locations, 2, repeated: true, type: :string, json_name: "deniedLocations"
end
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy.InstancePolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_machine_types: [String.t()],
          denied_machine_types: [String.t()],
          allowed_cpu_platforms: [String.t()],
          denied_cpu_platforms: [String.t()],
          allowed_accelerator_types: [String.t()],
          denied_accelerator_types: [String.t()],
          accelerator_count: integer
        }

  defstruct allowed_machine_types: [],
            denied_machine_types: [],
            allowed_cpu_platforms: [],
            denied_cpu_platforms: [],
            allowed_accelerator_types: [],
            denied_accelerator_types: [],
            accelerator_count: 0

  field :allowed_machine_types, 1, repeated: true, type: :string, json_name: "allowedMachineTypes"
  field :denied_machine_types, 2, repeated: true, type: :string, json_name: "deniedMachineTypes"
  field :allowed_cpu_platforms, 3, repeated: true, type: :string, json_name: "allowedCpuPlatforms"
  field :denied_cpu_platforms, 4, repeated: true, type: :string, json_name: "deniedCpuPlatforms"

  field :allowed_accelerator_types, 5,
    repeated: true,
    type: :string,
    json_name: "allowedAcceleratorTypes"

  field :denied_accelerator_types, 6,
    repeated: true,
    type: :string,
    json_name: "deniedAcceleratorTypes"

  field :accelerator_count, 7, type: :int64, json_name: "acceleratorCount"
end
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy.NetworkInterface do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network: String.t(),
          subnetwork: String.t(),
          no_external_ip_address: boolean
        }

  defstruct network: "",
            subnetwork: "",
            no_external_ip_address: false

  field :network, 1, type: :string
  field :subnetwork, 2, type: :string
  field :no_external_ip_address, 3, type: :bool, json_name: "noExternalIpAddress"
end
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy.NetworkPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network_interfaces: [Google.Cloud.Batch.V1alpha1.AllocationPolicy.NetworkInterface.t()]
        }

  defstruct network_interfaces: []

  field :network_interfaces, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.AllocationPolicy.NetworkInterface,
    json_name: "networkInterfaces"
end
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy.LabelsEntry do
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
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: Google.Cloud.Batch.V1alpha1.AllocationPolicy.LocationPolicy.t() | nil,
          instance: Google.Cloud.Batch.V1alpha1.AllocationPolicy.InstancePolicy.t() | nil,
          instance_templates: [String.t()],
          provisioning_models: [
            Google.Cloud.Batch.V1alpha1.AllocationPolicy.ProvisioningModel.t()
          ],
          service_account: String.t(),
          labels: %{String.t() => String.t()},
          network: Google.Cloud.Batch.V1alpha1.AllocationPolicy.NetworkPolicy.t() | nil
        }

  defstruct location: nil,
            instance: nil,
            instance_templates: [],
            provisioning_models: [],
            service_account: "",
            labels: %{},
            network: nil

  field :location, 1, type: Google.Cloud.Batch.V1alpha1.AllocationPolicy.LocationPolicy
  field :instance, 2, type: Google.Cloud.Batch.V1alpha1.AllocationPolicy.InstancePolicy
  field :instance_templates, 3, repeated: true, type: :string, json_name: "instanceTemplates"

  field :provisioning_models, 4,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.AllocationPolicy.ProvisioningModel,
    json_name: "provisioningModels",
    enum: true

  field :service_account, 5, type: :string, json_name: "serviceAccount"

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.AllocationPolicy.LabelsEntry,
    map: true

  field :network, 7, type: Google.Cloud.Batch.V1alpha1.AllocationPolicy.NetworkPolicy
end
defmodule Google.Cloud.Batch.V1alpha1.TaskGroup.Environment.VariablesEntry do
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
defmodule Google.Cloud.Batch.V1alpha1.TaskGroup.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variables: %{String.t() => String.t()}
        }

  defstruct variables: %{}

  field :variables, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.TaskGroup.Environment.VariablesEntry,
    map: true
end
defmodule Google.Cloud.Batch.V1alpha1.TaskGroup.LabelsEntry do
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
defmodule Google.Cloud.Batch.V1alpha1.TaskGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          task_spec: Google.Cloud.Batch.V1alpha1.TaskSpec.t() | nil,
          task_count: integer,
          parallelism: integer,
          scheduling_policy: Google.Cloud.Batch.V1alpha1.TaskGroup.SchedulingPolicy.t(),
          allocation_policy: Google.Cloud.Batch.V1alpha1.AllocationPolicy.t() | nil,
          labels: %{String.t() => String.t()},
          task_environments: [Google.Cloud.Batch.V1alpha1.TaskGroup.Environment.t()],
          task_count_per_node: integer,
          require_hosts_file: boolean
        }

  defstruct name: "",
            task_spec: nil,
            task_count: 0,
            parallelism: 0,
            scheduling_policy: :SCHEDULING_POLICY_UNSPECIFIED,
            allocation_policy: nil,
            labels: %{},
            task_environments: [],
            task_count_per_node: 0,
            require_hosts_file: false

  field :name, 1, type: :string, deprecated: false

  field :task_spec, 3,
    type: Google.Cloud.Batch.V1alpha1.TaskSpec,
    json_name: "taskSpec",
    deprecated: false

  field :task_count, 4, type: :int64, json_name: "taskCount"
  field :parallelism, 5, type: :int64

  field :scheduling_policy, 6,
    type: Google.Cloud.Batch.V1alpha1.TaskGroup.SchedulingPolicy,
    json_name: "schedulingPolicy",
    enum: true

  field :allocation_policy, 7,
    type: Google.Cloud.Batch.V1alpha1.AllocationPolicy,
    json_name: "allocationPolicy"

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.TaskGroup.LabelsEntry,
    map: true

  field :task_environments, 9,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.TaskGroup.Environment,
    json_name: "taskEnvironments"

  field :task_count_per_node, 10, type: :int64, json_name: "taskCountPerNode"
  field :require_hosts_file, 11, type: :bool, json_name: "requireHostsFile"
end
