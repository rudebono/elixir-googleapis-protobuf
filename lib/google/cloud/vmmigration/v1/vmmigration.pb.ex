defmodule Google.Cloud.Vmmigration.V1.ComputeEngineDiskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED, 0
  field :COMPUTE_ENGINE_DISK_TYPE_STANDARD, 1
  field :COMPUTE_ENGINE_DISK_TYPE_SSD, 2
  field :COMPUTE_ENGINE_DISK_TYPE_BALANCED, 3
  field :COMPUTE_ENGINE_DISK_TYPE_HYPERDISK_BALANCED, 4
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineLicenseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT, 0
  field :COMPUTE_ENGINE_LICENSE_TYPE_PAYG, 1
  field :COMPUTE_ENGINE_LICENSE_TYPE_BYOL, 2
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineBootOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COMPUTE_ENGINE_BOOT_OPTION_UNSPECIFIED, 0
  field :COMPUTE_ENGINE_BOOT_OPTION_EFI, 1
  field :COMPUTE_ENGINE_BOOT_OPTION_BIOS, 2
end

defmodule Google.Cloud.Vmmigration.V1.OsCapability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OS_CAPABILITY_UNSPECIFIED, 0
  field :OS_CAPABILITY_NVME_STORAGE_ACCESS, 1
  field :OS_CAPABILITY_GVNIC_NETWORK_INTERFACE, 2
  field :OS_CAPABILITY_IDPF_NETWORK_INTERFACE, 3
end

defmodule Google.Cloud.Vmmigration.V1.BootConversion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BOOT_CONVERSION_UNSPECIFIED, 0
  field :NONE, 1
  field :BIOS_TO_EFI, 2
end

defmodule Google.Cloud.Vmmigration.V1.UtilizationReportView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UTILIZATION_REPORT_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Vmmigration.V1.MigratingVmView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MIGRATING_VM_VIEW_UNSPECIFIED, 0
  field :MIGRATING_VM_VIEW_BASIC, 1
  field :MIGRATING_VM_VIEW_FULL, 2
end

defmodule Google.Cloud.Vmmigration.V1.VmArchitecture do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VM_ARCHITECTURE_UNSPECIFIED, 0
  field :VM_ARCHITECTURE_X86_FAMILY, 1
  field :VM_ARCHITECTURE_ARM64, 2
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineNetworkTier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COMPUTE_ENGINE_NETWORK_TIER_UNSPECIFIED, 0
  field :NETWORK_TIER_STANDARD, 1
  field :NETWORK_TIER_PREMIUM, 2
end

defmodule Google.Cloud.Vmmigration.V1.ReplicationCycle.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :PAUSED, 2
  field :FAILED, 3
  field :SUCCEEDED, 4
end

defmodule Google.Cloud.Vmmigration.V1.MigratingVm.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :READY, 2
  field :FIRST_SYNC, 3
  field :ACTIVE, 4
  field :CUTTING_OVER, 7
  field :CUTOVER, 8
  field :FINAL_SYNC, 9
  field :PAUSED, 10
  field :FINALIZING, 11
  field :FINALIZED, 12
  field :ERROR, 13
  field :EXPIRED, 14
  field :FINALIZED_EXPIRED, 17
end

defmodule Google.Cloud.Vmmigration.V1.CloneJob.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ACTIVE, 2
  field :FAILED, 3
  field :SUCCEEDED, 4
  field :CANCELLED, 5
  field :CANCELLING, 6
  field :ADAPTING_OS, 7
end

defmodule Google.Cloud.Vmmigration.V1.CutoverJob.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :FAILED, 2
  field :SUCCEEDED, 3
  field :CANCELLED, 4
  field :CANCELLING, 5
  field :ACTIVE, 6
  field :ADAPTING_OS, 7
end

defmodule Google.Cloud.Vmmigration.V1.AwsSourceDetails.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :FAILED, 2
  field :ACTIVE, 3
end

defmodule Google.Cloud.Vmmigration.V1.AzureSourceDetails.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :FAILED, 2
  field :ACTIVE, 3
end

defmodule Google.Cloud.Vmmigration.V1.DatacenterConnector.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :OFFLINE, 2
  field :FAILED, 3
  field :ACTIVE, 4
end

defmodule Google.Cloud.Vmmigration.V1.UpgradeStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :FAILED, 2
  field :SUCCEEDED, 3
end

defmodule Google.Cloud.Vmmigration.V1.VmwareVmDetails.PowerState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :POWER_STATE_UNSPECIFIED, 0
  field :ON, 1
  field :OFF, 2
  field :SUSPENDED, 3
end

defmodule Google.Cloud.Vmmigration.V1.VmwareVmDetails.BootOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BOOT_OPTION_UNSPECIFIED, 0
  field :EFI, 1
  field :BIOS, 2
end

defmodule Google.Cloud.Vmmigration.V1.VmwareVmDetails.VmArchitecture do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VM_ARCHITECTURE_UNSPECIFIED, 0
  field :VM_ARCHITECTURE_X86_FAMILY, 1
  field :VM_ARCHITECTURE_ARM64, 2
end

defmodule Google.Cloud.Vmmigration.V1.AwsVmDetails.PowerState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :POWER_STATE_UNSPECIFIED, 0
  field :ON, 1
  field :OFF, 2
  field :SUSPENDED, 3
  field :PENDING, 4
end

defmodule Google.Cloud.Vmmigration.V1.AwsVmDetails.BootOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BOOT_OPTION_UNSPECIFIED, 0
  field :EFI, 1
  field :BIOS, 2
end

defmodule Google.Cloud.Vmmigration.V1.AwsVmDetails.VmVirtualizationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VM_VIRTUALIZATION_TYPE_UNSPECIFIED, 0
  field :HVM, 1
  field :PARAVIRTUAL, 2
end

defmodule Google.Cloud.Vmmigration.V1.AwsVmDetails.VmArchitecture do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VM_ARCHITECTURE_UNSPECIFIED, 0
  field :I386, 1
  field :X86_64, 2
  field :ARM64, 3
  field :X86_64_MAC, 4
end

defmodule Google.Cloud.Vmmigration.V1.AzureVmDetails.PowerState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :POWER_STATE_UNSPECIFIED, 0
  field :STARTING, 1
  field :RUNNING, 2
  field :STOPPING, 3
  field :STOPPED, 4
  field :DEALLOCATING, 5
  field :DEALLOCATED, 6
  field :UNKNOWN, 7
end

defmodule Google.Cloud.Vmmigration.V1.AzureVmDetails.BootOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BOOT_OPTION_UNSPECIFIED, 0
  field :EFI, 1
  field :BIOS, 2
end

defmodule Google.Cloud.Vmmigration.V1.AzureVmDetails.VmArchitecture do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VM_ARCHITECTURE_UNSPECIFIED, 0
  field :VM_ARCHITECTURE_X86_FAMILY, 1
  field :VM_ARCHITECTURE_ARM64, 2
end

defmodule Google.Cloud.Vmmigration.V1.FetchStorageInventoryRequest.StorageType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STORAGE_TYPE_UNSPECIFIED, 0
  field :DISKS, 1
  field :SNAPSHOTS, 2
end

defmodule Google.Cloud.Vmmigration.V1.UtilizationReport.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Vmmigration.V1.UtilizationReport.TimeFrame do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TIME_FRAME_UNSPECIFIED, 0
  field :WEEK, 1
  field :MONTH, 2
  field :YEAR, 3
end

defmodule Google.Cloud.Vmmigration.V1.AppliedLicense.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :NONE, 1
  field :PAYG, 2
  field :BYOL, 3
end

defmodule Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :IN, 1
  field :NOT_IN, 2
end

defmodule Google.Cloud.Vmmigration.V1.ComputeScheduling.OnHostMaintenance do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ON_HOST_MAINTENANCE_UNSPECIFIED, 0
  field :TERMINATE, 1
  field :MIGRATE, 2
end

defmodule Google.Cloud.Vmmigration.V1.ComputeScheduling.RestartType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESTART_TYPE_UNSPECIFIED, 0
  field :AUTOMATIC_RESTART, 1
  field :NO_AUTOMATIC_RESTART, 2
end

defmodule Google.Cloud.Vmmigration.V1.Group.MigrationTargetType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MIGRATION_TARGET_TYPE_UNSPECIFIED, 0
  field :MIGRATION_TARGET_TYPE_GCE, 1
  field :MIGRATION_TARGET_TYPE_DISKS, 2
end

defmodule Google.Cloud.Vmmigration.V1.MigrationError.ErrorCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ERROR_CODE_UNSPECIFIED, 0
  field :UNKNOWN_ERROR, 1
  field :SOURCE_VALIDATION_ERROR, 2
  field :SOURCE_REPLICATION_ERROR, 3
  field :TARGET_REPLICATION_ERROR, 4
  field :OS_ADAPTATION_ERROR, 5
  field :CLONE_ERROR, 6
  field :CUTOVER_ERROR, 7
  field :UTILIZATION_REPORT_ERROR, 8
  field :APPLIANCE_UPGRADE_ERROR, 9
  field :IMAGE_IMPORT_ERROR, 10
  field :DISK_MIGRATION_ERROR, 11
end

defmodule Google.Cloud.Vmmigration.V1.MigrationWarning.WarningCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :WARNING_CODE_UNSPECIFIED, 0
  field :ADAPTATION_WARNING, 1
end

defmodule Google.Cloud.Vmmigration.V1.VmwareSourceVmDetails.Firmware do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FIRMWARE_UNSPECIFIED, 0
  field :EFI, 1
  field :BIOS, 2
end

defmodule Google.Cloud.Vmmigration.V1.AwsSourceVmDetails.Firmware do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FIRMWARE_UNSPECIFIED, 0
  field :EFI, 1
  field :BIOS, 2
end

defmodule Google.Cloud.Vmmigration.V1.AzureSourceVmDetails.Firmware do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FIRMWARE_UNSPECIFIED, 0
  field :EFI, 1
  field :BIOS, 2
end

defmodule Google.Cloud.Vmmigration.V1.ImageImportJob.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :CANCELLING, 5
  field :CANCELLED, 6
end

defmodule Google.Cloud.Vmmigration.V1.ShieldedInstanceConfig.SecureBoot do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SECURE_BOOT_UNSPECIFIED, 0
  field :TRUE, 1
  field :FALSE, 2
end

defmodule Google.Cloud.Vmmigration.V1.DiskMigrationJob.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :READY, 1
  field :RUNNING, 3
  field :SUCCEEDED, 4
  field :CANCELLING, 5
  field :CANCELLED, 6
  field :FAILED, 7
end

defmodule Google.Cloud.Vmmigration.V1.AwsSourceDiskDetails.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :GP2, 1
  field :GP3, 2
  field :IO1, 3
  field :IO2, 4
  field :ST1, 5
  field :SC1, 6
  field :STANDARD, 7
end

defmodule Google.Cloud.Vmmigration.V1.ReplicationCycle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 13, type: :string
  field :cycle_number, 10, type: :int32, json_name: "cycleNumber"
  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :total_pause_duration, 7, type: Google.Protobuf.Duration, json_name: "totalPauseDuration"
  field :progress_percent, 5, type: :int32, json_name: "progressPercent", deprecated: true
  field :steps, 9, repeated: true, type: Google.Cloud.Vmmigration.V1.CycleStep
  field :state, 11, type: Google.Cloud.Vmmigration.V1.ReplicationCycle.State, enum: true
  field :error, 12, type: Google.Rpc.Status, deprecated: false

  field :warnings, 14,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.MigrationWarning,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CycleStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :step, 0

  field :initializing_replication, 3,
    type: Google.Cloud.Vmmigration.V1.InitializingReplicationStep,
    json_name: "initializingReplication",
    oneof: 0

  field :replicating, 4, type: Google.Cloud.Vmmigration.V1.ReplicatingStep, oneof: 0

  field :post_processing, 5,
    type: Google.Cloud.Vmmigration.V1.PostProcessingStep,
    json_name: "postProcessing",
    oneof: 0

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Vmmigration.V1.InitializingReplicationStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.ReplicatingStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :total_bytes, 1, type: :int64, json_name: "totalBytes"
  field :replicated_bytes, 2, type: :int64, json_name: "replicatedBytes"

  field :last_two_minutes_average_bytes_per_second, 3,
    type: :int64,
    json_name: "lastTwoMinutesAverageBytesPerSecond"

  field :last_thirty_minutes_average_bytes_per_second, 4,
    type: :int64,
    json_name: "lastThirtyMinutesAverageBytesPerSecond"
end

defmodule Google.Cloud.Vmmigration.V1.PostProcessingStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.ReplicationSync do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :last_sync_time, 1, type: Google.Protobuf.Timestamp, json_name: "lastSyncTime"
end

defmodule Google.Cloud.Vmmigration.V1.MigratingVm.Expiration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :expire_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :extension_count, 2, type: :int32, json_name: "extensionCount", deprecated: false
  field :extendable, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.MigratingVm.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.MigratingVm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :target_vm_defaults, 0

  oneof :source_vm_details, 1

  field :compute_engine_target_defaults, 26,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults,
    json_name: "computeEngineTargetDefaults",
    oneof: 0

  field :compute_engine_disks_target_defaults, 34,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineDisksTargetDefaults,
    json_name: "computeEngineDisksTargetDefaults",
    oneof: 0

  field :vmware_source_vm_details, 28,
    type: Google.Cloud.Vmmigration.V1.VmwareSourceVmDetails,
    json_name: "vmwareSourceVmDetails",
    oneof: 1,
    deprecated: false

  field :aws_source_vm_details, 29,
    type: Google.Cloud.Vmmigration.V1.AwsSourceVmDetails,
    json_name: "awsSourceVmDetails",
    oneof: 1,
    deprecated: false

  field :azure_source_vm_details, 30,
    type: Google.Cloud.Vmmigration.V1.AzureSourceVmDetails,
    json_name: "azureSourceVmDetails",
    oneof: 1,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :source_vm_id, 2, type: :string, json_name: "sourceVmId"
  field :display_name, 18, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :policy, 8, type: Google.Cloud.Vmmigration.V1.SchedulePolicy

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :last_sync, 11,
    type: Google.Cloud.Vmmigration.V1.ReplicationSync,
    json_name: "lastSync",
    deprecated: false

  field :state, 23,
    type: Google.Cloud.Vmmigration.V1.MigratingVm.State,
    enum: true,
    deprecated: false

  field :state_time, 22,
    type: Google.Protobuf.Timestamp,
    json_name: "stateTime",
    deprecated: false

  field :current_sync_info, 13,
    type: Google.Cloud.Vmmigration.V1.ReplicationCycle,
    json_name: "currentSyncInfo",
    deprecated: false

  field :last_replication_cycle, 32,
    type: Google.Cloud.Vmmigration.V1.ReplicationCycle,
    json_name: "lastReplicationCycle",
    deprecated: false

  field :group, 15, type: :string, deprecated: false

  field :labels, 16,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.MigratingVm.LabelsEntry,
    map: true

  field :recent_clone_jobs, 17,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.CloneJob,
    json_name: "recentCloneJobs",
    deprecated: false

  field :error, 19, type: Google.Rpc.Status, deprecated: false

  field :recent_cutover_jobs, 20,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.CutoverJob,
    json_name: "recentCutoverJobs",
    deprecated: false

  field :cutover_forecast, 33,
    type: Google.Cloud.Vmmigration.V1.CutoverForecast,
    json_name: "cutoverForecast",
    deprecated: false

  field :expiration, 37,
    type: Google.Cloud.Vmmigration.V1.MigratingVm.Expiration,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CutoverForecast do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :estimated_cutover_job_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "estimatedCutoverJobDuration",
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CloneJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :target_vm_details, 0

  field :compute_engine_target_details, 20,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails,
    json_name: "computeEngineTargetDetails",
    oneof: 0,
    deprecated: false

  field :compute_engine_disks_target_details, 25,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineDisksTargetDetails,
    json_name: "computeEngineDisksTargetDetails",
    oneof: 0,
    deprecated: false

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 22, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :name, 3, type: :string, deprecated: false

  field :state, 12,
    type: Google.Cloud.Vmmigration.V1.CloneJob.State,
    enum: true,
    deprecated: false

  field :state_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "stateTime",
    deprecated: false

  field :error, 17, type: Google.Rpc.Status, deprecated: false
  field :steps, 23, repeated: true, type: Google.Cloud.Vmmigration.V1.CloneStep, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CloneStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :step, 0

  field :adapting_os, 3,
    type: Google.Cloud.Vmmigration.V1.AdaptingOSStep,
    json_name: "adaptingOs",
    oneof: 0

  field :preparing_vm_disks, 4,
    type: Google.Cloud.Vmmigration.V1.PreparingVMDisksStep,
    json_name: "preparingVmDisks",
    oneof: 0

  field :instantiating_migrated_vm, 5,
    type: Google.Cloud.Vmmigration.V1.InstantiatingMigratedVMStep,
    json_name: "instantiatingMigratedVm",
    oneof: 0

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Vmmigration.V1.AdaptingOSStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.PreparingVMDisksStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.InstantiatingMigratedVMStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.CutoverJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :target_vm_details, 0

  field :compute_engine_target_details, 14,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails,
    json_name: "computeEngineTargetDetails",
    oneof: 0,
    deprecated: false

  field :compute_engine_disks_target_details, 20,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineDisksTargetDetails,
    json_name: "computeEngineDisksTargetDetails",
    oneof: 0,
    deprecated: false

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 16, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :name, 3, type: :string, deprecated: false

  field :state, 5,
    type: Google.Cloud.Vmmigration.V1.CutoverJob.State,
    enum: true,
    deprecated: false

  field :state_time, 6, type: Google.Protobuf.Timestamp, json_name: "stateTime", deprecated: false
  field :progress_percent, 13, type: :int32, json_name: "progressPercent", deprecated: false
  field :error, 9, type: Google.Rpc.Status, deprecated: false
  field :state_message, 10, type: :string, json_name: "stateMessage", deprecated: false

  field :steps, 17,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.CutoverStep,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CutoverStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :step, 0

  field :previous_replication_cycle, 3,
    type: Google.Cloud.Vmmigration.V1.ReplicationCycle,
    json_name: "previousReplicationCycle",
    oneof: 0

  field :shutting_down_source_vm, 4,
    type: Google.Cloud.Vmmigration.V1.ShuttingDownSourceVMStep,
    json_name: "shuttingDownSourceVm",
    oneof: 0

  field :final_sync, 5,
    type: Google.Cloud.Vmmigration.V1.ReplicationCycle,
    json_name: "finalSync",
    oneof: 0

  field :preparing_vm_disks, 6,
    type: Google.Cloud.Vmmigration.V1.PreparingVMDisksStep,
    json_name: "preparingVmDisks",
    oneof: 0

  field :instantiating_migrated_vm, 7,
    type: Google.Cloud.Vmmigration.V1.InstantiatingMigratedVMStep,
    json_name: "instantiatingMigratedVm",
    oneof: 0

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Vmmigration.V1.ShuttingDownSourceVMStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.CreateCloneJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :clone_job_id, 2, type: :string, json_name: "cloneJobId", deprecated: false

  field :clone_job, 3,
    type: Google.Cloud.Vmmigration.V1.CloneJob,
    json_name: "cloneJob",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.CancelCloneJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CancelCloneJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.ListCloneJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListCloneJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clone_jobs, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.CloneJob,
    json_name: "cloneJobs",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.GetCloneJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.Source.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.Source do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source_details, 0

  field :vmware, 10, type: Google.Cloud.Vmmigration.V1.VmwareSourceDetails, oneof: 0
  field :aws, 12, type: Google.Cloud.Vmmigration.V1.AwsSourceDetails, oneof: 0
  field :azure, 13, type: Google.Cloud.Vmmigration.V1.AzureSourceDetails, oneof: 0
  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.Source.LabelsEntry,
    map: true

  field :description, 6, type: :string
  field :encryption, 14, type: Google.Cloud.Vmmigration.V1.Encryption, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.Encryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kms_key, 1, type: :string, json_name: "kmsKey", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.VmwareSourceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :username, 1, type: :string
  field :password, 2, type: :string, deprecated: false
  field :vcenter_ip, 3, type: :string, json_name: "vcenterIp"
  field :thumbprint, 4, type: :string
  field :resolved_vcenter_host, 5, type: :string, json_name: "resolvedVcenterHost"
end

defmodule Google.Cloud.Vmmigration.V1.AwsSourceDetails.AccessKeyCredentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_key_id, 1, type: :string, json_name: "accessKeyId"
  field :secret_access_key, 2, type: :string, json_name: "secretAccessKey", deprecated: false
  field :session_token, 3, type: :string, json_name: "sessionToken", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AwsSourceDetails.Tag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AwsSourceDetails.MigrationResourcesUserTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.AwsSourceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :credentials_type, 0

  field :access_key_creds, 11,
    type: Google.Cloud.Vmmigration.V1.AwsSourceDetails.AccessKeyCredentials,
    json_name: "accessKeyCreds",
    oneof: 0

  field :aws_region, 3, type: :string, json_name: "awsRegion", deprecated: false

  field :state, 4,
    type: Google.Cloud.Vmmigration.V1.AwsSourceDetails.State,
    enum: true,
    deprecated: false

  field :error, 5, type: Google.Rpc.Status, deprecated: false

  field :inventory_tag_list, 10,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.AwsSourceDetails.Tag,
    json_name: "inventoryTagList"

  field :inventory_security_group_names, 7,
    repeated: true,
    type: :string,
    json_name: "inventorySecurityGroupNames"

  field :migration_resources_user_tags, 8,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.AwsSourceDetails.MigrationResourcesUserTagsEntry,
    json_name: "migrationResourcesUserTags",
    map: true

  field :public_ip, 9, type: :string, json_name: "publicIp", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AzureSourceDetails.ClientSecretCredentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tenant_id, 1, type: :string, json_name: "tenantId"
  field :client_id, 2, type: :string, json_name: "clientId"
  field :client_secret, 3, type: :string, json_name: "clientSecret", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AzureSourceDetails.MigrationResourcesUserTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.AzureSourceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :credentials_type, 0

  field :client_secret_creds, 9,
    type: Google.Cloud.Vmmigration.V1.AzureSourceDetails.ClientSecretCredentials,
    json_name: "clientSecretCreds",
    oneof: 0

  field :subscription_id, 1, type: :string, json_name: "subscriptionId", deprecated: false
  field :azure_location, 5, type: :string, json_name: "azureLocation", deprecated: false

  field :state, 6,
    type: Google.Cloud.Vmmigration.V1.AzureSourceDetails.State,
    enum: true,
    deprecated: false

  field :error, 7, type: Google.Rpc.Status, deprecated: false

  field :migration_resources_user_tags, 8,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.AzureSourceDetails.MigrationResourcesUserTagsEntry,
    json_name: "migrationResourcesUserTags",
    map: true

  field :resource_group_id, 10, type: :string, json_name: "resourceGroupId", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.DatacenterConnector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :name, 3, type: :string, deprecated: false
  field :registration_id, 12, type: :string, json_name: "registrationId", deprecated: false
  field :service_account, 5, type: :string, json_name: "serviceAccount"
  field :version, 6, type: :string
  field :bucket, 10, type: :string, deprecated: false

  field :state, 7,
    type: Google.Cloud.Vmmigration.V1.DatacenterConnector.State,
    enum: true,
    deprecated: false

  field :state_time, 8, type: Google.Protobuf.Timestamp, json_name: "stateTime", deprecated: false
  field :error, 11, type: Google.Rpc.Status, deprecated: false

  field :appliance_infrastructure_version, 13,
    type: :string,
    json_name: "applianceInfrastructureVersion",
    deprecated: false

  field :appliance_software_version, 14,
    type: :string,
    json_name: "applianceSoftwareVersion",
    deprecated: false

  field :available_versions, 15,
    type: Google.Cloud.Vmmigration.V1.AvailableUpdates,
    json_name: "availableVersions",
    deprecated: false

  field :upgrade_status, 16,
    type: Google.Cloud.Vmmigration.V1.UpgradeStatus,
    json_name: "upgradeStatus",
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.UpgradeStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: :string
  field :state, 2, type: Google.Cloud.Vmmigration.V1.UpgradeStatus.State, enum: true
  field :error, 3, type: Google.Rpc.Status, deprecated: false
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :previous_version, 5, type: :string, json_name: "previousVersion"
end

defmodule Google.Cloud.Vmmigration.V1.AvailableUpdates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :new_deployable_appliance, 1,
    type: Google.Cloud.Vmmigration.V1.ApplianceVersion,
    json_name: "newDeployableAppliance"

  field :in_place_update, 2,
    type: Google.Cloud.Vmmigration.V1.ApplianceVersion,
    json_name: "inPlaceUpdate"
end

defmodule Google.Cloud.Vmmigration.V1.ApplianceVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: :string
  field :uri, 2, type: :string
  field :critical, 3, type: :bool
  field :release_notes_uri, 4, type: :string, json_name: "releaseNotesUri"
end

defmodule Google.Cloud.Vmmigration.V1.ListSourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListSourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sources, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.Source, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.GetSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CreateSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :source_id, 2, type: :string, json_name: "sourceId", deprecated: false
  field :source, 3, type: Google.Cloud.Vmmigration.V1.Source, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.UpdateSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :source, 2, type: Google.Cloud.Vmmigration.V1.Source, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.DeleteSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.FetchInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source, 1, type: :string, deprecated: false
  field :force_refresh, 2, type: :bool, json_name: "forceRefresh"
end

defmodule Google.Cloud.Vmmigration.V1.VmwareVmDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vm_id, 1, type: :string, json_name: "vmId"
  field :datacenter_id, 2, type: :string, json_name: "datacenterId"
  field :datacenter_description, 3, type: :string, json_name: "datacenterDescription"
  field :uuid, 4, type: :string
  field :display_name, 5, type: :string, json_name: "displayName"

  field :power_state, 6,
    type: Google.Cloud.Vmmigration.V1.VmwareVmDetails.PowerState,
    json_name: "powerState",
    enum: true

  field :cpu_count, 7, type: :int32, json_name: "cpuCount"
  field :memory_mb, 8, type: :int32, json_name: "memoryMb"
  field :disk_count, 9, type: :int32, json_name: "diskCount"
  field :committed_storage_mb, 12, type: :int64, json_name: "committedStorageMb"
  field :guest_description, 11, type: :string, json_name: "guestDescription"

  field :boot_option, 13,
    type: Google.Cloud.Vmmigration.V1.VmwareVmDetails.BootOption,
    json_name: "bootOption",
    enum: true,
    deprecated: false

  field :architecture, 14,
    type: Google.Cloud.Vmmigration.V1.VmwareVmDetails.VmArchitecture,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AwsVmDetails.TagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.AwsVmDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vm_id, 1, type: :string, json_name: "vmId"
  field :display_name, 2, type: :string, json_name: "displayName"
  field :source_id, 3, type: :string, json_name: "sourceId"
  field :source_description, 4, type: :string, json_name: "sourceDescription"

  field :power_state, 5,
    type: Google.Cloud.Vmmigration.V1.AwsVmDetails.PowerState,
    json_name: "powerState",
    enum: true,
    deprecated: false

  field :cpu_count, 6, type: :int32, json_name: "cpuCount"
  field :memory_mb, 7, type: :int32, json_name: "memoryMb"
  field :disk_count, 8, type: :int32, json_name: "diskCount"
  field :committed_storage_mb, 9, type: :int64, json_name: "committedStorageMb"
  field :os_description, 10, type: :string, json_name: "osDescription"

  field :boot_option, 11,
    type: Google.Cloud.Vmmigration.V1.AwsVmDetails.BootOption,
    json_name: "bootOption",
    enum: true

  field :instance_type, 12, type: :string, json_name: "instanceType"
  field :vpc_id, 13, type: :string, json_name: "vpcId"

  field :security_groups, 14,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.AwsSecurityGroup,
    json_name: "securityGroups"

  field :tags, 15,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.AwsVmDetails.TagsEntry,
    map: true

  field :zone, 16, type: :string

  field :virtualization_type, 17,
    type: Google.Cloud.Vmmigration.V1.AwsVmDetails.VmVirtualizationType,
    json_name: "virtualizationType",
    enum: true

  field :architecture, 18,
    type: Google.Cloud.Vmmigration.V1.AwsVmDetails.VmArchitecture,
    enum: true

  field :vcpu_count, 19, type: :int32, json_name: "vcpuCount"
end

defmodule Google.Cloud.Vmmigration.V1.AwsSecurityGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.AzureVmDetails.OSDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string
  field :name, 2, type: :string
  field :size_gb, 3, type: :int32, json_name: "sizeGb"
end

defmodule Google.Cloud.Vmmigration.V1.AzureVmDetails.Disk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :size_gb, 2, type: :int32, json_name: "sizeGb"
  field :lun, 3, type: :int32
end

defmodule Google.Cloud.Vmmigration.V1.AzureVmDetails.OSDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string
  field :publisher, 2, type: :string
  field :offer, 3, type: :string
  field :plan, 4, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.AzureVmDetails.TagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.AzureVmDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vm_id, 1, type: :string, json_name: "vmId"

  field :power_state, 2,
    type: Google.Cloud.Vmmigration.V1.AzureVmDetails.PowerState,
    json_name: "powerState",
    enum: true

  field :vm_size, 3, type: :string, json_name: "vmSize"
  field :cpu_count, 4, type: :int32, json_name: "cpuCount"
  field :memory_mb, 5, type: :int32, json_name: "memoryMb"
  field :disk_count, 6, type: :int32, json_name: "diskCount"
  field :committed_storage_mb, 7, type: :int64, json_name: "committedStorageMb"
  field :os_disk, 8, type: Google.Cloud.Vmmigration.V1.AzureVmDetails.OSDisk, json_name: "osDisk"
  field :disks, 9, repeated: true, type: Google.Cloud.Vmmigration.V1.AzureVmDetails.Disk

  field :os_description, 10,
    type: Google.Cloud.Vmmigration.V1.AzureVmDetails.OSDescription,
    json_name: "osDescription"

  field :boot_option, 11,
    type: Google.Cloud.Vmmigration.V1.AzureVmDetails.BootOption,
    json_name: "bootOption",
    enum: true

  field :tags, 12,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.AzureVmDetails.TagsEntry,
    map: true

  field :computer_name, 13, type: :string, json_name: "computerName"

  field :architecture, 14,
    type: Google.Cloud.Vmmigration.V1.AzureVmDetails.VmArchitecture,
    enum: true
end

defmodule Google.Cloud.Vmmigration.V1.VmwareVmsDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :details, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.VmwareVmDetails
end

defmodule Google.Cloud.Vmmigration.V1.AwsVmsDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :details, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.AwsVmDetails
end

defmodule Google.Cloud.Vmmigration.V1.AzureVmsDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :details, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.AzureVmDetails
end

defmodule Google.Cloud.Vmmigration.V1.FetchInventoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :SourceVms, 0

  field :vmware_vms, 1,
    type: Google.Cloud.Vmmigration.V1.VmwareVmsDetails,
    json_name: "vmwareVms",
    oneof: 0

  field :aws_vms, 3,
    type: Google.Cloud.Vmmigration.V1.AwsVmsDetails,
    json_name: "awsVms",
    oneof: 0

  field :azure_vms, 5,
    type: Google.Cloud.Vmmigration.V1.AzureVmsDetails,
    json_name: "azureVms",
    oneof: 0

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.FetchStorageInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Vmmigration.V1.FetchStorageInventoryRequest.StorageType,
    enum: true,
    deprecated: false

  field :force_refresh, 3, type: :bool, json_name: "forceRefresh", deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.FetchStorageInventoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resources, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.SourceStorageResource

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :next_page_token, 3, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.SourceStorageResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :StorageResource, 0

  field :aws_disk_details, 1,
    type: Google.Cloud.Vmmigration.V1.AwsSourceDiskDetails,
    json_name: "awsDiskDetails",
    oneof: 0
end

defmodule Google.Cloud.Vmmigration.V1.UtilizationReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :state, 3,
    type: Google.Cloud.Vmmigration.V1.UtilizationReport.State,
    enum: true,
    deprecated: false

  field :state_time, 4, type: Google.Protobuf.Timestamp, json_name: "stateTime", deprecated: false
  field :error, 5, type: Google.Rpc.Status, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :time_frame, 7,
    type: Google.Cloud.Vmmigration.V1.UtilizationReport.TimeFrame,
    json_name: "timeFrame",
    enum: true

  field :frame_end_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "frameEndTime",
    deprecated: false

  field :vm_count, 9, type: :int32, json_name: "vmCount", deprecated: false
  field :vms, 10, repeated: true, type: Google.Cloud.Vmmigration.V1.VmUtilizationInfo
end

defmodule Google.Cloud.Vmmigration.V1.VmUtilizationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :VmDetails, 0

  field :vmware_vm_details, 1,
    type: Google.Cloud.Vmmigration.V1.VmwareVmDetails,
    json_name: "vmwareVmDetails",
    oneof: 0

  field :vm_id, 3, type: :string, json_name: "vmId"
  field :utilization, 2, type: Google.Cloud.Vmmigration.V1.VmUtilizationMetrics
end

defmodule Google.Cloud.Vmmigration.V1.VmUtilizationMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cpu_max_percent, 9, type: :int32, json_name: "cpuMaxPercent"
  field :cpu_average_percent, 10, type: :int32, json_name: "cpuAveragePercent"
  field :memory_max_percent, 11, type: :int32, json_name: "memoryMaxPercent"
  field :memory_average_percent, 12, type: :int32, json_name: "memoryAveragePercent"
  field :disk_io_rate_max_kbps, 13, type: :int64, json_name: "diskIoRateMaxKbps"
  field :disk_io_rate_average_kbps, 14, type: :int64, json_name: "diskIoRateAverageKbps"
  field :network_throughput_max_kbps, 15, type: :int64, json_name: "networkThroughputMaxKbps"

  field :network_throughput_average_kbps, 16,
    type: :int64,
    json_name: "networkThroughputAverageKbps"
end

defmodule Google.Cloud.Vmmigration.V1.ListUtilizationReportsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Vmmigration.V1.UtilizationReportView,
    enum: true,
    deprecated: false

  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string, deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListUtilizationReportsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :utilization_reports, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.UtilizationReport,
    json_name: "utilizationReports",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.GetUtilizationReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Vmmigration.V1.UtilizationReportView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CreateUtilizationReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :utilization_report, 2,
    type: Google.Cloud.Vmmigration.V1.UtilizationReport,
    json_name: "utilizationReport",
    deprecated: false

  field :utilization_report_id, 3,
    type: :string,
    json_name: "utilizationReportId",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.DeleteUtilizationReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListDatacenterConnectorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :datacenter_connectors, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.DatacenterConnector,
    json_name: "datacenterConnectors",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.GetDatacenterConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CreateDatacenterConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :datacenter_connector_id, 2,
    type: :string,
    json_name: "datacenterConnectorId",
    deprecated: false

  field :datacenter_connector, 3,
    type: Google.Cloud.Vmmigration.V1.DatacenterConnector,
    json_name: "datacenterConnector",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.DeleteDatacenterConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.UpgradeApplianceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :datacenter_connector, 1,
    type: :string,
    json_name: "datacenterConnector",
    deprecated: false

  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.UpgradeApplianceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.ListDatacenterConnectorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vm_name, 1, type: :string, json_name: "vmName"
  field :target_project, 2, type: :string, json_name: "targetProject", deprecated: false
  field :zone, 3, type: :string
  field :machine_type_series, 4, type: :string, json_name: "machineTypeSeries"
  field :machine_type, 5, type: :string, json_name: "machineType"
  field :network_tags, 6, repeated: true, type: :string, json_name: "networkTags"

  field :network_interfaces, 7,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.NetworkInterface,
    json_name: "networkInterfaces"

  field :service_account, 8, type: :string, json_name: "serviceAccount", deprecated: false

  field :disk_type, 9,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineDiskType,
    json_name: "diskType",
    enum: true

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults.LabelsEntry,
    map: true

  field :license_type, 11,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineLicenseType,
    json_name: "licenseType",
    enum: true

  field :applied_license, 12,
    type: Google.Cloud.Vmmigration.V1.AppliedLicense,
    json_name: "appliedLicense",
    deprecated: false

  field :compute_scheduling, 13,
    type: Google.Cloud.Vmmigration.V1.ComputeScheduling,
    json_name: "computeScheduling"

  field :secure_boot, 14, type: :bool, json_name: "secureBoot"
  field :enable_vtpm, 21, type: :bool, json_name: "enableVtpm", deprecated: false

  field :enable_integrity_monitoring, 22,
    type: :bool,
    json_name: "enableIntegrityMonitoring",
    deprecated: false

  field :boot_option, 15,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineBootOption,
    json_name: "bootOption",
    enum: true,
    deprecated: false

  field :metadata, 16,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults.MetadataEntry,
    map: true

  field :additional_licenses, 17, repeated: true, type: :string, json_name: "additionalLicenses"
  field :hostname, 18, type: :string
  field :encryption, 19, type: Google.Cloud.Vmmigration.V1.Encryption, deprecated: false

  field :boot_conversion, 20,
    type: Google.Cloud.Vmmigration.V1.BootConversion,
    json_name: "bootConversion",
    enum: true,
    deprecated: false

  field :disk_replica_zones, 24,
    repeated: true,
    type: :string,
    json_name: "diskReplicaZones",
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vm_name, 1, type: :string, json_name: "vmName"
  field :project, 2, type: :string
  field :zone, 3, type: :string
  field :machine_type_series, 4, type: :string, json_name: "machineTypeSeries"
  field :machine_type, 5, type: :string, json_name: "machineType"
  field :network_tags, 6, repeated: true, type: :string, json_name: "networkTags"

  field :network_interfaces, 7,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.NetworkInterface,
    json_name: "networkInterfaces"

  field :service_account, 8, type: :string, json_name: "serviceAccount"

  field :disk_type, 9,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineDiskType,
    json_name: "diskType",
    enum: true

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.LabelsEntry,
    map: true

  field :license_type, 11,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineLicenseType,
    json_name: "licenseType",
    enum: true

  field :applied_license, 12,
    type: Google.Cloud.Vmmigration.V1.AppliedLicense,
    json_name: "appliedLicense"

  field :compute_scheduling, 13,
    type: Google.Cloud.Vmmigration.V1.ComputeScheduling,
    json_name: "computeScheduling"

  field :secure_boot, 14, type: :bool, json_name: "secureBoot"
  field :enable_vtpm, 21, type: :bool, json_name: "enableVtpm", deprecated: false

  field :enable_integrity_monitoring, 22,
    type: :bool,
    json_name: "enableIntegrityMonitoring",
    deprecated: false

  field :boot_option, 15,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineBootOption,
    json_name: "bootOption",
    enum: true

  field :metadata, 16,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.MetadataEntry,
    map: true

  field :additional_licenses, 17, repeated: true, type: :string, json_name: "additionalLicenses"
  field :hostname, 18, type: :string
  field :encryption, 19, type: Google.Cloud.Vmmigration.V1.Encryption, deprecated: false

  field :boot_conversion, 20,
    type: Google.Cloud.Vmmigration.V1.BootConversion,
    json_name: "bootConversion",
    enum: true,
    deprecated: false

  field :disk_replica_zones, 24,
    repeated: true,
    type: :string,
    json_name: "diskReplicaZones",
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.NetworkInterface do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnetwork, 2, type: :string, deprecated: false
  field :internal_ip, 3, type: :string, json_name: "internalIp", deprecated: false
  field :external_ip, 4, type: :string, json_name: "externalIp", deprecated: false

  field :network_tier, 5,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineNetworkTier,
    json_name: "networkTier",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AppliedLicense do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Vmmigration.V1.AppliedLicense.Type, enum: true
  field :os_license, 2, type: :string, json_name: "osLicense"
end

defmodule Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string

  field :operator, 2,
    type: Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity.Operator,
    enum: true

  field :values, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.ComputeScheduling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :on_host_maintenance, 1,
    type: Google.Cloud.Vmmigration.V1.ComputeScheduling.OnHostMaintenance,
    json_name: "onHostMaintenance",
    enum: true

  field :restart_type, 5,
    type: Google.Cloud.Vmmigration.V1.ComputeScheduling.RestartType,
    json_name: "restartType",
    enum: true

  field :node_affinities, 3,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity,
    json_name: "nodeAffinities"

  field :min_node_cpus, 4, type: :int32, json_name: "minNodeCpus"
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineDisksTargetDefaults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :location, 0

  oneof :vm_target, 1

  field :zone, 2, type: :string, oneof: 0

  field :disks_target_defaults, 5,
    type: Google.Cloud.Vmmigration.V1.DisksMigrationDisksTargetDefaults,
    json_name: "disksTargetDefaults",
    oneof: 1

  field :vm_target_defaults, 6,
    type: Google.Cloud.Vmmigration.V1.DisksMigrationVmTargetDefaults,
    json_name: "vmTargetDefaults",
    oneof: 1

  field :target_project, 1, type: :string, json_name: "targetProject", deprecated: false
  field :disks, 4, repeated: true, type: Google.Cloud.Vmmigration.V1.PersistentDiskDefaults
end

defmodule Google.Cloud.Vmmigration.V1.PersistentDiskDefaults.AdditionalLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.PersistentDiskDefaults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source_disk_number, 1, type: :int32, json_name: "sourceDiskNumber", deprecated: false
  field :disk_name, 2, type: :string, json_name: "diskName", deprecated: false

  field :disk_type, 3,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineDiskType,
    json_name: "diskType",
    enum: true

  field :additional_labels, 4,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.PersistentDiskDefaults.AdditionalLabelsEntry,
    json_name: "additionalLabels",
    map: true

  field :encryption, 5, type: Google.Cloud.Vmmigration.V1.Encryption, deprecated: false

  field :vm_attachment_details, 6,
    type: Google.Cloud.Vmmigration.V1.VmAttachmentDetails,
    json_name: "vmAttachmentDetails",
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.VmAttachmentDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :device_name, 1, type: :string, json_name: "deviceName", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.DisksMigrationDisksTargetDefaults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.DisksMigrationVmTargetDefaults.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.DisksMigrationVmTargetDefaults.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.DisksMigrationVmTargetDefaults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vm_name, 1, type: :string, json_name: "vmName", deprecated: false
  field :machine_type_series, 2, type: :string, json_name: "machineTypeSeries", deprecated: false
  field :machine_type, 3, type: :string, json_name: "machineType", deprecated: false

  field :network_tags, 4,
    repeated: true,
    type: :string,
    json_name: "networkTags",
    deprecated: false

  field :network_interfaces, 5,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.NetworkInterface,
    json_name: "networkInterfaces",
    deprecated: false

  field :service_account, 6, type: :string, json_name: "serviceAccount", deprecated: false

  field :compute_scheduling, 7,
    type: Google.Cloud.Vmmigration.V1.ComputeScheduling,
    json_name: "computeScheduling",
    deprecated: false

  field :secure_boot, 8, type: :bool, json_name: "secureBoot", deprecated: false
  field :enable_vtpm, 16, type: :bool, json_name: "enableVtpm", deprecated: false

  field :enable_integrity_monitoring, 17,
    type: :bool,
    json_name: "enableIntegrityMonitoring",
    deprecated: false

  field :metadata, 10,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.DisksMigrationVmTargetDefaults.MetadataEntry,
    map: true,
    deprecated: false

  field :additional_licenses, 11,
    repeated: true,
    type: :string,
    json_name: "additionalLicenses",
    deprecated: false

  field :hostname, 12, type: :string, deprecated: false

  field :labels, 13,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.DisksMigrationVmTargetDefaults.LabelsEntry,
    map: true,
    deprecated: false

  field :boot_disk_defaults, 14,
    type: Google.Cloud.Vmmigration.V1.BootDiskDefaults,
    json_name: "bootDiskDefaults",
    deprecated: false

  field :encryption, 15, type: Google.Cloud.Vmmigration.V1.Encryption, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.BootDiskDefaults.DiskImageDefaults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source_image, 1, type: :string, json_name: "sourceImage", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.BootDiskDefaults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :image, 3, type: Google.Cloud.Vmmigration.V1.BootDiskDefaults.DiskImageDefaults, oneof: 0
  field :disk_name, 1, type: :string, json_name: "diskName", deprecated: false

  field :disk_type, 2,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineDiskType,
    json_name: "diskType",
    enum: true,
    deprecated: false

  field :device_name, 4, type: :string, json_name: "deviceName", deprecated: false
  field :encryption, 5, type: Google.Cloud.Vmmigration.V1.Encryption, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineDisksTargetDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :vm_target, 0

  field :disks_target_details, 5,
    type: Google.Cloud.Vmmigration.V1.DisksMigrationDisksTargetDetails,
    json_name: "disksTargetDetails",
    oneof: 0

  field :vm_target_details, 6,
    type: Google.Cloud.Vmmigration.V1.DisksMigrationVmTargetDetails,
    json_name: "vmTargetDetails",
    oneof: 0

  field :disks, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.PersistentDisk
end

defmodule Google.Cloud.Vmmigration.V1.PersistentDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source_disk_number, 1, type: :int32, json_name: "sourceDiskNumber"
  field :disk_uri, 2, type: :string, json_name: "diskUri"
end

defmodule Google.Cloud.Vmmigration.V1.DisksMigrationDisksTargetDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.DisksMigrationVmTargetDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vm_uri, 1, type: :string, json_name: "vmUri", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.SchedulePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :idle_duration, 1, type: Google.Protobuf.Duration, json_name: "idleDuration"
  field :skip_os_adaptation, 2, type: :bool, json_name: "skipOsAdaptation"
end

defmodule Google.Cloud.Vmmigration.V1.CreateMigratingVmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :migrating_vm_id, 2, type: :string, json_name: "migratingVmId", deprecated: false

  field :migrating_vm, 3,
    type: Google.Cloud.Vmmigration.V1.MigratingVm,
    json_name: "migratingVm",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.ListMigratingVmsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :view, 6, type: Google.Cloud.Vmmigration.V1.MigratingVmView, enum: true, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListMigratingVmsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :migrating_vms, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.MigratingVm,
    json_name: "migratingVms",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.GetMigratingVmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Vmmigration.V1.MigratingVmView, enum: true, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.UpdateMigratingVmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :migrating_vm, 2,
    type: Google.Cloud.Vmmigration.V1.MigratingVm,
    json_name: "migratingVm",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.DeleteMigratingVmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.StartMigrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :migrating_vm, 1, type: :string, json_name: "migratingVm", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.StartMigrationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.PauseMigrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :migrating_vm, 1, type: :string, json_name: "migratingVm", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.PauseMigrationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.ResumeMigrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :migrating_vm, 1, type: :string, json_name: "migratingVm", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ResumeMigrationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.FinalizeMigrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :migrating_vm, 1, type: :string, json_name: "migratingVm", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ExtendMigrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :migrating_vm, 1, type: :string, json_name: "migratingVm", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ExtendMigrationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.FinalizeMigrationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.TargetProject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :project, 2, type: :string, deprecated: false
  field :description, 3, type: :string

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.GetTargetProjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListTargetProjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListTargetProjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_projects, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.TargetProject,
    json_name: "targetProjects",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CreateTargetProjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :target_project_id, 2, type: :string, json_name: "targetProjectId", deprecated: false

  field :target_project, 3,
    type: Google.Cloud.Vmmigration.V1.TargetProject,
    json_name: "targetProject",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.UpdateTargetProjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :target_project, 2,
    type: Google.Cloud.Vmmigration.V1.TargetProject,
    json_name: "targetProject",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.DeleteTargetProjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.Group do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 4, type: :string
  field :display_name, 5, type: :string, json_name: "displayName"

  field :migration_target_type, 6,
    type: Google.Cloud.Vmmigration.V1.Group.MigrationTargetType,
    json_name: "migrationTargetType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :groups, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.Group, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.GetGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CreateGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :group_id, 2, type: :string, json_name: "groupId", deprecated: false
  field :group, 3, type: Google.Cloud.Vmmigration.V1.Group, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.UpdateGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :group, 2, type: Google.Cloud.Vmmigration.V1.Group, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.DeleteGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AddGroupMigrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :group, 1, type: :string, deprecated: false
  field :migrating_vm, 2, type: :string, json_name: "migratingVm", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AddGroupMigrationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.RemoveGroupMigrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :group, 1, type: :string, deprecated: false
  field :migrating_vm, 2, type: :string, json_name: "migratingVm", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.RemoveGroupMigrationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.CreateCutoverJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cutover_job_id, 2, type: :string, json_name: "cutoverJobId", deprecated: false

  field :cutover_job, 3,
    type: Google.Cloud.Vmmigration.V1.CutoverJob,
    json_name: "cutoverJob",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmmigration.V1.CancelCutoverJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CancelCutoverJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.ListCutoverJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListCutoverJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cutover_jobs, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.CutoverJob,
    json_name: "cutoverJobs",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.GetCutoverJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.MigrationError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1,
    type: Google.Cloud.Vmmigration.V1.MigrationError.ErrorCode,
    enum: true,
    deprecated: false

  field :error_message, 2,
    type: Google.Rpc.LocalizedMessage,
    json_name: "errorMessage",
    deprecated: false

  field :action_item, 3,
    type: Google.Rpc.LocalizedMessage,
    json_name: "actionItem",
    deprecated: false

  field :help_links, 4,
    repeated: true,
    type: Google.Rpc.Help.Link,
    json_name: "helpLinks",
    deprecated: false

  field :error_time, 5, type: Google.Protobuf.Timestamp, json_name: "errorTime", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.MigrationWarning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1, type: Google.Cloud.Vmmigration.V1.MigrationWarning.WarningCode, enum: true

  field :warning_message, 2,
    type: Google.Rpc.LocalizedMessage,
    json_name: "warningMessage",
    deprecated: false

  field :action_item, 3,
    type: Google.Rpc.LocalizedMessage,
    json_name: "actionItem",
    deprecated: false

  field :help_links, 4,
    repeated: true,
    type: Google.Rpc.Help.Link,
    json_name: "helpLinks",
    deprecated: false

  field :warning_time, 5, type: Google.Protobuf.Timestamp, json_name: "warningTime"
end

defmodule Google.Cloud.Vmmigration.V1.VmwareSourceVmDetails.VmwareDiskDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disk_number, 1, type: :int32, json_name: "diskNumber", deprecated: false
  field :size_gb, 2, type: :int64, json_name: "sizeGb", deprecated: false
  field :label, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.VmwareSourceVmDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :firmware, 1,
    type: Google.Cloud.Vmmigration.V1.VmwareSourceVmDetails.Firmware,
    enum: true,
    deprecated: false

  field :committed_storage_bytes, 2,
    type: :int64,
    json_name: "committedStorageBytes",
    deprecated: false

  field :disks, 3,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.VmwareSourceVmDetails.VmwareDiskDetails,
    deprecated: false

  field :vm_capabilities_info, 5,
    type: Google.Cloud.Vmmigration.V1.VmCapabilities,
    json_name: "vmCapabilitiesInfo",
    deprecated: false

  field :architecture, 6,
    type: Google.Cloud.Vmmigration.V1.VmArchitecture,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AwsSourceVmDetails.AwsDiskDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disk_number, 1, type: :int32, json_name: "diskNumber", deprecated: false
  field :volume_id, 2, type: :string, json_name: "volumeId", deprecated: false
  field :size_gb, 3, type: :int64, json_name: "sizeGb", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AwsSourceVmDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :firmware, 1,
    type: Google.Cloud.Vmmigration.V1.AwsSourceVmDetails.Firmware,
    enum: true,
    deprecated: false

  field :committed_storage_bytes, 2,
    type: :int64,
    json_name: "committedStorageBytes",
    deprecated: false

  field :disks, 3,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.AwsSourceVmDetails.AwsDiskDetails,
    deprecated: false

  field :vm_capabilities_info, 5,
    type: Google.Cloud.Vmmigration.V1.VmCapabilities,
    json_name: "vmCapabilitiesInfo",
    deprecated: false

  field :architecture, 6,
    type: Google.Cloud.Vmmigration.V1.VmArchitecture,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AzureSourceVmDetails.AzureDiskDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disk_number, 1, type: :int32, json_name: "diskNumber", deprecated: false
  field :disk_id, 2, type: :string, json_name: "diskId", deprecated: false
  field :size_gb, 3, type: :int64, json_name: "sizeGb", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AzureSourceVmDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :firmware, 1,
    type: Google.Cloud.Vmmigration.V1.AzureSourceVmDetails.Firmware,
    enum: true,
    deprecated: false

  field :committed_storage_bytes, 2,
    type: :int64,
    json_name: "committedStorageBytes",
    deprecated: false

  field :disks, 3,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.AzureSourceVmDetails.AzureDiskDetails,
    deprecated: false

  field :vm_capabilities_info, 5,
    type: Google.Cloud.Vmmigration.V1.VmCapabilities,
    json_name: "vmCapabilitiesInfo",
    deprecated: false

  field :architecture, 6,
    type: Google.Cloud.Vmmigration.V1.VmArchitecture,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListReplicationCyclesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListReplicationCyclesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :replication_cycles, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ReplicationCycle,
    json_name: "replicationCycles",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.GetReplicationCycleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.VmCapabilities do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :os_capabilities, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.OsCapability,
    json_name: "osCapabilities",
    enum: true,
    deprecated: false

  field :last_os_capabilities_update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "lastOsCapabilitiesUpdateTime",
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ImageImport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  oneof :target_defaults, 1

  field :cloud_storage_uri, 2,
    type: :string,
    json_name: "cloudStorageUri",
    oneof: 0,
    deprecated: false

  field :disk_image_target_defaults, 4,
    type: Google.Cloud.Vmmigration.V1.DiskImageTargetDetails,
    json_name: "diskImageTargetDefaults",
    oneof: 1,
    deprecated: false

  field :machine_image_target_defaults, 7,
    type: Google.Cloud.Vmmigration.V1.MachineImageTargetDetails,
    json_name: "machineImageTargetDefaults",
    oneof: 1,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :recent_image_import_jobs, 5,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ImageImportJob,
    json_name: "recentImageImportJobs",
    deprecated: false

  field :encryption, 6, type: Google.Cloud.Vmmigration.V1.Encryption, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ImageImportJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  oneof :target_details, 1

  field :cloud_storage_uri, 10,
    type: :string,
    json_name: "cloudStorageUri",
    oneof: 0,
    deprecated: false

  field :disk_image_target_details, 3,
    type: Google.Cloud.Vmmigration.V1.DiskImageTargetDetails,
    json_name: "diskImageTargetDetails",
    oneof: 1,
    deprecated: false

  field :machine_image_target_details, 11,
    type: Google.Cloud.Vmmigration.V1.MachineImageTargetDetails,
    json_name: "machineImageTargetDetails",
    oneof: 1,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :created_resources, 2,
    repeated: true,
    type: :string,
    json_name: "createdResources",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Vmmigration.V1.ImageImportJob.State,
    enum: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :errors, 7, repeated: true, type: Google.Rpc.Status, deprecated: false

  field :warnings, 8,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.MigrationWarning,
    deprecated: false

  field :steps, 9,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ImageImportStep,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ImageImportStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :step, 0

  field :initializing, 3, type: Google.Cloud.Vmmigration.V1.InitializingImageImportStep, oneof: 0

  field :loading_source_files, 4,
    type: Google.Cloud.Vmmigration.V1.LoadingImageSourceFilesStep,
    json_name: "loadingSourceFiles",
    oneof: 0

  field :adapting_os, 5,
    type: Google.Cloud.Vmmigration.V1.AdaptingOSStep,
    json_name: "adaptingOs",
    oneof: 0

  field :creating_image, 6,
    type: Google.Cloud.Vmmigration.V1.CreatingImageStep,
    json_name: "creatingImage",
    oneof: 0

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.InitializingImageImportStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.LoadingImageSourceFilesStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.CreatingImageStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.DiskImageTargetDetails.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.DiskImageTargetDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :os_adaptation_config, 0

  field :os_adaptation_parameters, 11,
    type: Google.Cloud.Vmmigration.V1.ImageImportOsAdaptationParameters,
    json_name: "osAdaptationParameters",
    oneof: 0,
    deprecated: false

  field :data_disk_image_import, 12,
    type: Google.Cloud.Vmmigration.V1.DataDiskImageImport,
    json_name: "dataDiskImageImport",
    oneof: 0,
    deprecated: false

  field :image_name, 1, type: :string, json_name: "imageName", deprecated: false
  field :target_project, 2, type: :string, json_name: "targetProject", deprecated: false
  field :description, 5, type: :string, deprecated: false
  field :family_name, 6, type: :string, json_name: "familyName", deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.DiskImageTargetDetails.LabelsEntry,
    map: true,
    deprecated: false

  field :additional_licenses, 8,
    repeated: true,
    type: :string,
    json_name: "additionalLicenses",
    deprecated: false

  field :single_region_storage, 9,
    type: :bool,
    json_name: "singleRegionStorage",
    deprecated: false

  field :encryption, 10, type: Google.Cloud.Vmmigration.V1.Encryption, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.MachineImageTargetDetails.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.MachineImageTargetDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :os_adaptation_config, 0

  field :os_adaptation_parameters, 3,
    type: Google.Cloud.Vmmigration.V1.ImageImportOsAdaptationParameters,
    json_name: "osAdaptationParameters",
    oneof: 0,
    deprecated: false

  field :skip_os_adaptation, 16,
    type: Google.Cloud.Vmmigration.V1.SkipOsAdaptation,
    json_name: "skipOsAdaptation",
    oneof: 0,
    deprecated: false

  field :machine_image_name, 1, type: :string, json_name: "machineImageName", deprecated: false
  field :target_project, 2, type: :string, json_name: "targetProject", deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :single_region_storage, 5,
    type: :bool,
    json_name: "singleRegionStorage",
    deprecated: false

  field :encryption, 6, type: Google.Cloud.Vmmigration.V1.Encryption, deprecated: false

  field :machine_image_parameters_overrides, 7,
    type: Google.Cloud.Vmmigration.V1.MachineImageParametersOverrides,
    json_name: "machineImageParametersOverrides",
    deprecated: false

  field :service_account, 8,
    type: Google.Cloud.Vmmigration.V1.ServiceAccount,
    json_name: "serviceAccount",
    deprecated: false

  field :additional_licenses, 9,
    repeated: true,
    type: :string,
    json_name: "additionalLicenses",
    deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.MachineImageTargetDetails.LabelsEntry,
    map: true,
    deprecated: false

  field :tags, 11, repeated: true, type: :string, deprecated: false

  field :shielded_instance_config, 12,
    type: Google.Cloud.Vmmigration.V1.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig",
    deprecated: false

  field :network_interfaces, 13,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.NetworkInterface,
    json_name: "networkInterfaces",
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ServiceAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :email, 1, type: :string, deprecated: false
  field :scopes, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ShieldedInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :secure_boot, 1,
    type: Google.Cloud.Vmmigration.V1.ShieldedInstanceConfig.SecureBoot,
    json_name: "secureBoot",
    enum: true,
    deprecated: false

  field :enable_vtpm, 2, type: :bool, json_name: "enableVtpm", deprecated: false

  field :enable_integrity_monitoring, 3,
    type: :bool,
    json_name: "enableIntegrityMonitoring",
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.MachineImageParametersOverrides do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ImageImportOsAdaptationParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generalize, 1, type: :bool, deprecated: false

  field :license_type, 2,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineLicenseType,
    json_name: "licenseType",
    enum: true,
    deprecated: false

  field :boot_conversion, 3,
    type: Google.Cloud.Vmmigration.V1.BootConversion,
    json_name: "bootConversion",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.DataDiskImageImport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.SkipOsAdaptation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.GetImageImportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListImageImportsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListImageImportsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :image_imports, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ImageImport,
    json_name: "imageImports",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CreateImageImportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :image_import_id, 2, type: :string, json_name: "imageImportId", deprecated: false

  field :image_import, 3,
    type: Google.Cloud.Vmmigration.V1.ImageImport,
    json_name: "imageImport",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.DeleteImageImportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.GetImageImportJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListImageImportJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListImageImportJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :image_import_jobs, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.ImageImportJob,
    json_name: "imageImportJobs",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CancelImageImportJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CancelImageImportJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.DiskMigrationJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source_disk_details, 0

  field :aws_source_disk_details, 2,
    type: Google.Cloud.Vmmigration.V1.AwsSourceDiskDetails,
    json_name: "awsSourceDiskDetails",
    oneof: 0

  field :name, 1, type: :string, deprecated: false

  field :target_details, 3,
    type: Google.Cloud.Vmmigration.V1.DiskMigrationJobTargetDetails,
    json_name: "targetDetails",
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 6,
    type: Google.Cloud.Vmmigration.V1.DiskMigrationJob.State,
    enum: true,
    deprecated: false

  field :errors, 7, repeated: true, type: Google.Rpc.Status, deprecated: false

  field :steps, 8,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.DiskMigrationStep,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.DiskMigrationJobTargetDetails.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.DiskMigrationJobTargetDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :target_storage, 0

  field :target_disk, 8,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineDisk,
    json_name: "targetDisk",
    oneof: 0,
    deprecated: false

  field :target_project, 2, type: :string, json_name: "targetProject", deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.DiskMigrationJobTargetDetails.LabelsEntry,
    map: true,
    deprecated: false

  field :encryption, 7, type: Google.Cloud.Vmmigration.V1.Encryption, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.DiskMigrationStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :step, 0

  field :creating_source_disk_snapshot, 3,
    type: Google.Cloud.Vmmigration.V1.CreatingSourceDiskSnapshotStep,
    json_name: "creatingSourceDiskSnapshot",
    oneof: 0

  field :copying_source_disk_snapshot, 4,
    type: Google.Cloud.Vmmigration.V1.CopyingSourceDiskSnapshotStep,
    json_name: "copyingSourceDiskSnapshot",
    oneof: 0

  field :provisioning_target_disk, 5,
    type: Google.Cloud.Vmmigration.V1.ProvisioningTargetDiskStep,
    json_name: "provisioningTargetDisk",
    oneof: 0

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CreatingSourceDiskSnapshotStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.CopyingSourceDiskSnapshotStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.ProvisioningTargetDiskStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.ComputeEngineDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disk_id, 1, type: :string, json_name: "diskId", deprecated: false
  field :zone, 2, type: :string, deprecated: false

  field :replica_zones, 3,
    repeated: true,
    type: :string,
    json_name: "replicaZones",
    deprecated: false

  field :disk_type, 4,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineDiskType,
    json_name: "diskType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.AwsSourceDiskDetails.TagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vmmigration.V1.AwsSourceDiskDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :volume_id, 1, type: :string, json_name: "volumeId", deprecated: false
  field :size_gib, 2, type: :int64, json_name: "sizeGib", deprecated: false

  field :disk_type, 3,
    type: Google.Cloud.Vmmigration.V1.AwsSourceDiskDetails.Type,
    json_name: "diskType",
    enum: true,
    deprecated: false

  field :tags, 4,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.AwsSourceDiskDetails.TagsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CreateDiskMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :disk_migration_job_id, 2,
    type: :string,
    json_name: "diskMigrationJobId",
    deprecated: false

  field :disk_migration_job, 3,
    type: Google.Cloud.Vmmigration.V1.DiskMigrationJob,
    json_name: "diskMigrationJob",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListDiskMigrationJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.ListDiskMigrationJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disk_migration_jobs, 1,
    repeated: true,
    type: Google.Cloud.Vmmigration.V1.DiskMigrationJob,
    json_name: "diskMigrationJobs",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.GetDiskMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.UpdateDiskMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :disk_migration_job, 2,
    type: Google.Cloud.Vmmigration.V1.DiskMigrationJob,
    json_name: "diskMigrationJob",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.DeleteDiskMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.RunDiskMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.RunDiskMigrationJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.CancelDiskMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmmigration.V1.CancelDiskMigrationJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vmmigration.V1.VmMigration.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.vmmigration.v1.VmMigration",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListSources,
      Google.Cloud.Vmmigration.V1.ListSourcesRequest,
      Google.Cloud.Vmmigration.V1.ListSourcesResponse

  rpc :GetSource, Google.Cloud.Vmmigration.V1.GetSourceRequest, Google.Cloud.Vmmigration.V1.Source

  rpc :CreateSource, Google.Cloud.Vmmigration.V1.CreateSourceRequest, Google.Longrunning.Operation

  rpc :UpdateSource, Google.Cloud.Vmmigration.V1.UpdateSourceRequest, Google.Longrunning.Operation

  rpc :DeleteSource, Google.Cloud.Vmmigration.V1.DeleteSourceRequest, Google.Longrunning.Operation

  rpc :FetchInventory,
      Google.Cloud.Vmmigration.V1.FetchInventoryRequest,
      Google.Cloud.Vmmigration.V1.FetchInventoryResponse

  rpc :FetchStorageInventory,
      Google.Cloud.Vmmigration.V1.FetchStorageInventoryRequest,
      Google.Cloud.Vmmigration.V1.FetchStorageInventoryResponse

  rpc :ListUtilizationReports,
      Google.Cloud.Vmmigration.V1.ListUtilizationReportsRequest,
      Google.Cloud.Vmmigration.V1.ListUtilizationReportsResponse

  rpc :GetUtilizationReport,
      Google.Cloud.Vmmigration.V1.GetUtilizationReportRequest,
      Google.Cloud.Vmmigration.V1.UtilizationReport

  rpc :CreateUtilizationReport,
      Google.Cloud.Vmmigration.V1.CreateUtilizationReportRequest,
      Google.Longrunning.Operation

  rpc :DeleteUtilizationReport,
      Google.Cloud.Vmmigration.V1.DeleteUtilizationReportRequest,
      Google.Longrunning.Operation

  rpc :ListDatacenterConnectors,
      Google.Cloud.Vmmigration.V1.ListDatacenterConnectorsRequest,
      Google.Cloud.Vmmigration.V1.ListDatacenterConnectorsResponse

  rpc :GetDatacenterConnector,
      Google.Cloud.Vmmigration.V1.GetDatacenterConnectorRequest,
      Google.Cloud.Vmmigration.V1.DatacenterConnector

  rpc :CreateDatacenterConnector,
      Google.Cloud.Vmmigration.V1.CreateDatacenterConnectorRequest,
      Google.Longrunning.Operation

  rpc :DeleteDatacenterConnector,
      Google.Cloud.Vmmigration.V1.DeleteDatacenterConnectorRequest,
      Google.Longrunning.Operation

  rpc :UpgradeAppliance,
      Google.Cloud.Vmmigration.V1.UpgradeApplianceRequest,
      Google.Longrunning.Operation

  rpc :CreateMigratingVm,
      Google.Cloud.Vmmigration.V1.CreateMigratingVmRequest,
      Google.Longrunning.Operation

  rpc :ListMigratingVms,
      Google.Cloud.Vmmigration.V1.ListMigratingVmsRequest,
      Google.Cloud.Vmmigration.V1.ListMigratingVmsResponse

  rpc :GetMigratingVm,
      Google.Cloud.Vmmigration.V1.GetMigratingVmRequest,
      Google.Cloud.Vmmigration.V1.MigratingVm

  rpc :UpdateMigratingVm,
      Google.Cloud.Vmmigration.V1.UpdateMigratingVmRequest,
      Google.Longrunning.Operation

  rpc :DeleteMigratingVm,
      Google.Cloud.Vmmigration.V1.DeleteMigratingVmRequest,
      Google.Longrunning.Operation

  rpc :StartMigration,
      Google.Cloud.Vmmigration.V1.StartMigrationRequest,
      Google.Longrunning.Operation

  rpc :ResumeMigration,
      Google.Cloud.Vmmigration.V1.ResumeMigrationRequest,
      Google.Longrunning.Operation

  rpc :PauseMigration,
      Google.Cloud.Vmmigration.V1.PauseMigrationRequest,
      Google.Longrunning.Operation

  rpc :FinalizeMigration,
      Google.Cloud.Vmmigration.V1.FinalizeMigrationRequest,
      Google.Longrunning.Operation

  rpc :ExtendMigration,
      Google.Cloud.Vmmigration.V1.ExtendMigrationRequest,
      Google.Longrunning.Operation

  rpc :CreateCloneJob,
      Google.Cloud.Vmmigration.V1.CreateCloneJobRequest,
      Google.Longrunning.Operation

  rpc :CancelCloneJob,
      Google.Cloud.Vmmigration.V1.CancelCloneJobRequest,
      Google.Longrunning.Operation

  rpc :ListCloneJobs,
      Google.Cloud.Vmmigration.V1.ListCloneJobsRequest,
      Google.Cloud.Vmmigration.V1.ListCloneJobsResponse

  rpc :GetCloneJob,
      Google.Cloud.Vmmigration.V1.GetCloneJobRequest,
      Google.Cloud.Vmmigration.V1.CloneJob

  rpc :CreateCutoverJob,
      Google.Cloud.Vmmigration.V1.CreateCutoverJobRequest,
      Google.Longrunning.Operation

  rpc :CancelCutoverJob,
      Google.Cloud.Vmmigration.V1.CancelCutoverJobRequest,
      Google.Longrunning.Operation

  rpc :ListCutoverJobs,
      Google.Cloud.Vmmigration.V1.ListCutoverJobsRequest,
      Google.Cloud.Vmmigration.V1.ListCutoverJobsResponse

  rpc :GetCutoverJob,
      Google.Cloud.Vmmigration.V1.GetCutoverJobRequest,
      Google.Cloud.Vmmigration.V1.CutoverJob

  rpc :ListGroups,
      Google.Cloud.Vmmigration.V1.ListGroupsRequest,
      Google.Cloud.Vmmigration.V1.ListGroupsResponse

  rpc :GetGroup, Google.Cloud.Vmmigration.V1.GetGroupRequest, Google.Cloud.Vmmigration.V1.Group

  rpc :CreateGroup, Google.Cloud.Vmmigration.V1.CreateGroupRequest, Google.Longrunning.Operation

  rpc :UpdateGroup, Google.Cloud.Vmmigration.V1.UpdateGroupRequest, Google.Longrunning.Operation

  rpc :DeleteGroup, Google.Cloud.Vmmigration.V1.DeleteGroupRequest, Google.Longrunning.Operation

  rpc :AddGroupMigration,
      Google.Cloud.Vmmigration.V1.AddGroupMigrationRequest,
      Google.Longrunning.Operation

  rpc :RemoveGroupMigration,
      Google.Cloud.Vmmigration.V1.RemoveGroupMigrationRequest,
      Google.Longrunning.Operation

  rpc :ListTargetProjects,
      Google.Cloud.Vmmigration.V1.ListTargetProjectsRequest,
      Google.Cloud.Vmmigration.V1.ListTargetProjectsResponse

  rpc :GetTargetProject,
      Google.Cloud.Vmmigration.V1.GetTargetProjectRequest,
      Google.Cloud.Vmmigration.V1.TargetProject

  rpc :CreateTargetProject,
      Google.Cloud.Vmmigration.V1.CreateTargetProjectRequest,
      Google.Longrunning.Operation

  rpc :UpdateTargetProject,
      Google.Cloud.Vmmigration.V1.UpdateTargetProjectRequest,
      Google.Longrunning.Operation

  rpc :DeleteTargetProject,
      Google.Cloud.Vmmigration.V1.DeleteTargetProjectRequest,
      Google.Longrunning.Operation

  rpc :ListReplicationCycles,
      Google.Cloud.Vmmigration.V1.ListReplicationCyclesRequest,
      Google.Cloud.Vmmigration.V1.ListReplicationCyclesResponse

  rpc :GetReplicationCycle,
      Google.Cloud.Vmmigration.V1.GetReplicationCycleRequest,
      Google.Cloud.Vmmigration.V1.ReplicationCycle

  rpc :ListImageImports,
      Google.Cloud.Vmmigration.V1.ListImageImportsRequest,
      Google.Cloud.Vmmigration.V1.ListImageImportsResponse

  rpc :GetImageImport,
      Google.Cloud.Vmmigration.V1.GetImageImportRequest,
      Google.Cloud.Vmmigration.V1.ImageImport

  rpc :CreateImageImport,
      Google.Cloud.Vmmigration.V1.CreateImageImportRequest,
      Google.Longrunning.Operation

  rpc :DeleteImageImport,
      Google.Cloud.Vmmigration.V1.DeleteImageImportRequest,
      Google.Longrunning.Operation

  rpc :ListImageImportJobs,
      Google.Cloud.Vmmigration.V1.ListImageImportJobsRequest,
      Google.Cloud.Vmmigration.V1.ListImageImportJobsResponse

  rpc :GetImageImportJob,
      Google.Cloud.Vmmigration.V1.GetImageImportJobRequest,
      Google.Cloud.Vmmigration.V1.ImageImportJob

  rpc :CancelImageImportJob,
      Google.Cloud.Vmmigration.V1.CancelImageImportJobRequest,
      Google.Longrunning.Operation

  rpc :CreateDiskMigrationJob,
      Google.Cloud.Vmmigration.V1.CreateDiskMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :ListDiskMigrationJobs,
      Google.Cloud.Vmmigration.V1.ListDiskMigrationJobsRequest,
      Google.Cloud.Vmmigration.V1.ListDiskMigrationJobsResponse

  rpc :GetDiskMigrationJob,
      Google.Cloud.Vmmigration.V1.GetDiskMigrationJobRequest,
      Google.Cloud.Vmmigration.V1.DiskMigrationJob

  rpc :UpdateDiskMigrationJob,
      Google.Cloud.Vmmigration.V1.UpdateDiskMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :DeleteDiskMigrationJob,
      Google.Cloud.Vmmigration.V1.DeleteDiskMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :RunDiskMigrationJob,
      Google.Cloud.Vmmigration.V1.RunDiskMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :CancelDiskMigrationJob,
      Google.Cloud.Vmmigration.V1.CancelDiskMigrationJobRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Vmmigration.V1.VmMigration.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Vmmigration.V1.VmMigration.Service
end
