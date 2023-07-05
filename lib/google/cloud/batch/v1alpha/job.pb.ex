defmodule Google.Cloud.Batch.V1alpha.Job.SchedulingPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SCHEDULING_POLICY_UNSPECIFIED, 0
  field :AS_SOON_AS_POSSIBLE, 1
end

defmodule Google.Cloud.Batch.V1alpha.LogsPolicy.Destination do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DESTINATION_UNSPECIFIED, 0
  field :CLOUD_LOGGING, 1
  field :PATH, 2
end

defmodule Google.Cloud.Batch.V1alpha.JobDependency.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :FINISHED, 3
end

defmodule Google.Cloud.Batch.V1alpha.JobStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :QUEUED, 1
  field :SCHEDULED, 2
  field :RUNNING, 3
  field :SUCCEEDED, 4
  field :FAILED, 5
  field :DELETION_IN_PROGRESS, 6
end

defmodule Google.Cloud.Batch.V1alpha.JobNotification.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :JOB_STATE_CHANGED, 1
  field :TASK_STATE_CHANGED, 2
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy.ProvisioningModel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROVISIONING_MODEL_UNSPECIFIED, 0
  field :STANDARD, 1
  field :SPOT, 2
  field :PREEMPTIBLE, 3
end

defmodule Google.Cloud.Batch.V1alpha.TaskGroup.SchedulingPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SCHEDULING_POLICY_UNSPECIFIED, 0
  field :AS_SOON_AS_POSSIBLE, 1
  field :IN_ORDER, 2
end

defmodule Google.Cloud.Batch.V1alpha.Job.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.Job do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :priority, 3, type: :int64

  field :task_groups, 4,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.TaskGroup,
    json_name: "taskGroups",
    deprecated: false

  field :scheduling_policy, 5,
    type: Google.Cloud.Batch.V1alpha.Job.SchedulingPolicy,
    json_name: "schedulingPolicy",
    enum: true

  field :dependencies, 6, repeated: true, type: Google.Cloud.Batch.V1alpha.JobDependency

  field :allocation_policy, 7,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy,
    json_name: "allocationPolicy"

  field :labels, 8, repeated: true, type: Google.Cloud.Batch.V1alpha.Job.LabelsEntry, map: true
  field :status, 9, type: Google.Cloud.Batch.V1alpha.JobStatus, deprecated: false
  field :notification, 10, type: Google.Cloud.Batch.V1alpha.JobNotification, deprecated: true

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :logs_policy, 13, type: Google.Cloud.Batch.V1alpha.LogsPolicy, json_name: "logsPolicy"
  field :notifications, 14, repeated: true, type: Google.Cloud.Batch.V1alpha.JobNotification
end

defmodule Google.Cloud.Batch.V1alpha.LogsPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :destination, 1, type: Google.Cloud.Batch.V1alpha.LogsPolicy.Destination, enum: true
  field :logs_path, 2, type: :string, json_name: "logsPath"
end

defmodule Google.Cloud.Batch.V1alpha.JobDependency.ItemsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Batch.V1alpha.JobDependency.Type, enum: true
end

defmodule Google.Cloud.Batch.V1alpha.JobDependency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :items, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.JobDependency.ItemsEntry,
    map: true
end

defmodule Google.Cloud.Batch.V1alpha.JobStatus.InstanceStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType"

  field :provisioning_model, 2,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy.ProvisioningModel,
    json_name: "provisioningModel",
    enum: true

  field :task_pack, 3, type: :int64, json_name: "taskPack"

  field :boot_disk, 4,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy.Disk,
    json_name: "bootDisk"
end

defmodule Google.Cloud.Batch.V1alpha.JobStatus.TaskGroupStatus.CountsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Batch.V1alpha.JobStatus.TaskGroupStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :counts, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.JobStatus.TaskGroupStatus.CountsEntry,
    map: true

  field :instances, 2, repeated: true, type: Google.Cloud.Batch.V1alpha.JobStatus.InstanceStatus
end

defmodule Google.Cloud.Batch.V1alpha.JobStatus.TaskGroupsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Batch.V1alpha.JobStatus.TaskGroupStatus
end

defmodule Google.Cloud.Batch.V1alpha.JobStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Batch.V1alpha.JobStatus.State, enum: true

  field :status_events, 2,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.StatusEvent,
    json_name: "statusEvents"

  field :task_groups, 4,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.JobStatus.TaskGroupsEntry,
    json_name: "taskGroups",
    map: true

  field :run_duration, 5, type: Google.Protobuf.Duration, json_name: "runDuration"

  field :resource_usage, 6,
    type: Google.Cloud.Batch.V1alpha.ResourceUsage,
    json_name: "resourceUsage"
end

defmodule Google.Cloud.Batch.V1alpha.ResourceUsage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :core_hours, 1, type: :double, json_name: "coreHours"
end

defmodule Google.Cloud.Batch.V1alpha.JobNotification.Message do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Batch.V1alpha.JobNotification.Type, enum: true

  field :new_job_state, 2,
    type: Google.Cloud.Batch.V1alpha.JobStatus.State,
    json_name: "newJobState",
    enum: true

  field :new_task_state, 3,
    type: Google.Cloud.Batch.V1alpha.TaskStatus.State,
    json_name: "newTaskState",
    enum: true
end

defmodule Google.Cloud.Batch.V1alpha.JobNotification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :pubsub_topic, 1, type: :string, json_name: "pubsubTopic"
  field :message, 2, type: Google.Cloud.Batch.V1alpha.JobNotification.Message
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy.LocationPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allowed_locations, 1, repeated: true, type: :string, json_name: "allowedLocations"
  field :denied_locations, 2, repeated: true, type: :string, json_name: "deniedLocations"
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy.Disk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data_source, 0

  field :image, 4, type: :string, oneof: 0
  field :snapshot, 5, type: :string, oneof: 0
  field :type, 1, type: :string
  field :size_gb, 2, type: :int64, json_name: "sizeGb"
  field :disk_interface, 6, type: :string, json_name: "diskInterface"
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy.AttachedDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :attached, 0

  field :new_disk, 1,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy.Disk,
    json_name: "newDisk",
    oneof: 0

  field :existing_disk, 2, type: :string, json_name: "existingDisk", oneof: 0
  field :device_name, 3, type: :string, json_name: "deviceName"
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy.Accelerator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: :string
  field :count, 2, type: :int64
  field :install_gpu_drivers, 3, type: :bool, json_name: "installGpuDrivers", deprecated: true
  field :driver_version, 4, type: :string, json_name: "driverVersion"
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy.InstancePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allowed_machine_types, 1,
    repeated: true,
    type: :string,
    json_name: "allowedMachineTypes",
    deprecated: true

  field :machine_type, 2, type: :string, json_name: "machineType"
  field :min_cpu_platform, 3, type: :string, json_name: "minCpuPlatform"

  field :provisioning_model, 4,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy.ProvisioningModel,
    json_name: "provisioningModel",
    enum: true

  field :accelerators, 5,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy.Accelerator

  field :boot_disk, 8,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy.Disk,
    json_name: "bootDisk"

  field :disks, 6, repeated: true, type: Google.Cloud.Batch.V1alpha.AllocationPolicy.AttachedDisk
  field :reservation, 7, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy.InstancePolicyOrTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :policy_template, 0

  field :policy, 1, type: Google.Cloud.Batch.V1alpha.AllocationPolicy.InstancePolicy, oneof: 0
  field :instance_template, 2, type: :string, json_name: "instanceTemplate", oneof: 0
  field :install_gpu_drivers, 3, type: :bool, json_name: "installGpuDrivers"
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy.NetworkInterface do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network, 1, type: :string
  field :subnetwork, 2, type: :string
  field :no_external_ip_address, 3, type: :bool, json_name: "noExternalIpAddress"
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy.NetworkPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network_interfaces, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy.NetworkInterface,
    json_name: "networkInterfaces"
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy.PlacementPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :collocation, 1, type: :string
  field :max_distance, 2, type: :int64, json_name: "maxDistance"
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.AllocationPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :location, 1, type: Google.Cloud.Batch.V1alpha.AllocationPolicy.LocationPolicy

  field :instance, 2,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy.InstancePolicy,
    deprecated: true

  field :instances, 8,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy.InstancePolicyOrTemplate

  field :instance_templates, 3,
    repeated: true,
    type: :string,
    json_name: "instanceTemplates",
    deprecated: true

  field :provisioning_models, 4,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy.ProvisioningModel,
    json_name: "provisioningModels",
    enum: true,
    deprecated: true

  field :service_account_email, 5,
    type: :string,
    json_name: "serviceAccountEmail",
    deprecated: true

  field :service_account, 9,
    type: Google.Cloud.Batch.V1alpha.ServiceAccount,
    json_name: "serviceAccount"

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy.LabelsEntry,
    map: true

  field :network, 7, type: Google.Cloud.Batch.V1alpha.AllocationPolicy.NetworkPolicy
  field :placement, 10, type: Google.Cloud.Batch.V1alpha.AllocationPolicy.PlacementPolicy
end

defmodule Google.Cloud.Batch.V1alpha.TaskGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.TaskGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :task_spec, 3,
    type: Google.Cloud.Batch.V1alpha.TaskSpec,
    json_name: "taskSpec",
    deprecated: false

  field :task_count, 4, type: :int64, json_name: "taskCount"
  field :parallelism, 5, type: :int64

  field :scheduling_policy, 6,
    type: Google.Cloud.Batch.V1alpha.TaskGroup.SchedulingPolicy,
    json_name: "schedulingPolicy",
    enum: true

  field :allocation_policy, 7,
    type: Google.Cloud.Batch.V1alpha.AllocationPolicy,
    json_name: "allocationPolicy"

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.TaskGroup.LabelsEntry,
    map: true

  field :task_environments, 9,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.Environment,
    json_name: "taskEnvironments"

  field :task_count_per_node, 10, type: :int64, json_name: "taskCountPerNode"
  field :require_hosts_file, 11, type: :bool, json_name: "requireHostsFile"
  field :permissive_ssh, 12, type: :bool, json_name: "permissiveSsh"
end

defmodule Google.Cloud.Batch.V1alpha.ServiceAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :email, 1, type: :string
  field :scopes, 2, repeated: true, type: :string
end