defmodule Google.Cloud.Batch.V1alpha1.Job.SchedulingPolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SCHEDULING_POLICY_UNSPECIFIED, 0
  field :AS_SOON_AS_POSSIBLE, 1
end
defmodule Google.Cloud.Batch.V1alpha1.LogsPolicy.Destination do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DESTINATION_UNSPECIFIED, 0
  field :CLOUD_LOGGING, 1
  field :PATH, 2
end
defmodule Google.Cloud.Batch.V1alpha1.JobDependency.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :FINISHED, 3
end
defmodule Google.Cloud.Batch.V1alpha1.JobStatus.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :PROVISIONING_MODEL_UNSPECIFIED, 0
  field :STANDARD, 1
  field :SPOT, 2
  field :PREEMPTIBLE, 3
end
defmodule Google.Cloud.Batch.V1alpha1.TaskGroup.SchedulingPolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SCHEDULING_POLICY_UNSPECIFIED, 0
  field :AS_SOON_AS_POSSIBLE, 1
end
defmodule Google.Cloud.Batch.V1alpha1.Job.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Batch.V1alpha1.Job do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :destination, 1, type: Google.Cloud.Batch.V1alpha1.LogsPolicy.Destination, enum: true
  field :logs_path, 2, type: :string, json_name: "logsPath"
end
defmodule Google.Cloud.Batch.V1alpha1.JobDependency.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Batch.V1alpha1.JobDependency.Type, enum: true
end
defmodule Google.Cloud.Batch.V1alpha1.JobDependency do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :items, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.JobDependency.ItemsEntry,
    map: true
end
defmodule Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupStatus.CountsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :counts, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupStatus.CountsEntry,
    map: true
end
defmodule Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Batch.V1alpha1.JobStatus.TaskGroupStatus
end
defmodule Google.Cloud.Batch.V1alpha1.JobStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :pubsub_topic, 1, type: :string, json_name: "pubsubTopic"
end
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy.LocationPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :allowed_locations, 1, repeated: true, type: :string, json_name: "allowedLocations"
  field :denied_locations, 2, repeated: true, type: :string, json_name: "deniedLocations"
end
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy.InstancePolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :network, 1, type: :string
  field :subnetwork, 2, type: :string
  field :no_external_ip_address, 3, type: :bool, json_name: "noExternalIpAddress"
end
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy.NetworkPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :network_interfaces, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.AllocationPolicy.NetworkInterface,
    json_name: "networkInterfaces"
end
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Batch.V1alpha1.AllocationPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Batch.V1alpha1.TaskGroup.Environment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :variables, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha1.TaskGroup.Environment.VariablesEntry,
    map: true
end
defmodule Google.Cloud.Batch.V1alpha1.TaskGroup.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Batch.V1alpha1.TaskGroup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
