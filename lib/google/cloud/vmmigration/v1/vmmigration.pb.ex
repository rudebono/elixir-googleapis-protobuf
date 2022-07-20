defmodule Google.Cloud.Vmmigration.V1.UtilizationReportView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UTILIZATION_REPORT_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end
defmodule Google.Cloud.Vmmigration.V1.MigratingVmView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :MIGRATING_VM_VIEW_UNSPECIFIED, 0
  field :MIGRATING_VM_VIEW_BASIC, 1
  field :MIGRATING_VM_VIEW_FULL, 2
end
defmodule Google.Cloud.Vmmigration.V1.ComputeEngineDiskType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED, 0
  field :COMPUTE_ENGINE_DISK_TYPE_STANDARD, 1
  field :COMPUTE_ENGINE_DISK_TYPE_SSD, 2
  field :COMPUTE_ENGINE_DISK_TYPE_BALANCED, 3
end
defmodule Google.Cloud.Vmmigration.V1.ComputeEngineLicenseType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT, 0
  field :COMPUTE_ENGINE_LICENSE_TYPE_PAYG, 1
  field :COMPUTE_ENGINE_LICENSE_TYPE_BYOL, 2
end
defmodule Google.Cloud.Vmmigration.V1.ComputeEngineBootOption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :COMPUTE_ENGINE_BOOT_OPTION_UNSPECIFIED, 0
  field :COMPUTE_ENGINE_BOOT_OPTION_EFI, 1
  field :COMPUTE_ENGINE_BOOT_OPTION_BIOS, 2
end
defmodule Google.Cloud.Vmmigration.V1.MigratingVm.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
end
defmodule Google.Cloud.Vmmigration.V1.CloneJob.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :FAILED, 2
  field :SUCCEEDED, 3
  field :CANCELLED, 4
  field :CANCELLING, 5
  field :ACTIVE, 6
  field :ADAPTING_OS, 7
end
defmodule Google.Cloud.Vmmigration.V1.DatacenterConnector.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :OFFLINE, 2
  field :FAILED, 3
  field :ACTIVE, 4
end
defmodule Google.Cloud.Vmmigration.V1.UpgradeStatus.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :FAILED, 2
  field :SUCCEEDED, 3
end
defmodule Google.Cloud.Vmmigration.V1.VmwareVmDetails.PowerState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :POWER_STATE_UNSPECIFIED, 0
  field :ON, 1
  field :OFF, 2
  field :SUSPENDED, 3
end
defmodule Google.Cloud.Vmmigration.V1.VmwareVmDetails.BootOption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :BOOT_OPTION_UNSPECIFIED, 0
  field :EFI, 1
  field :BIOS, 2
end
defmodule Google.Cloud.Vmmigration.V1.UtilizationReport.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end
defmodule Google.Cloud.Vmmigration.V1.UtilizationReport.TimeFrame do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TIME_FRAME_UNSPECIFIED, 0
  field :WEEK, 1
  field :MONTH, 2
  field :YEAR, 3
end
defmodule Google.Cloud.Vmmigration.V1.AppliedLicense.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :NONE, 1
  field :PAYG, 2
  field :BYOL, 3
end
defmodule Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity.Operator do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :IN, 1
  field :NOT_IN, 2
end
defmodule Google.Cloud.Vmmigration.V1.ComputeScheduling.OnHostMaintenance do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ON_HOST_MAINTENANCE_UNSPECIFIED, 0
  field :TERMINATE, 1
  field :MIGRATE, 2
end
defmodule Google.Cloud.Vmmigration.V1.ComputeScheduling.RestartType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :RESTART_TYPE_UNSPECIFIED, 0
  field :AUTOMATIC_RESTART, 1
  field :NO_AUTOMATIC_RESTART, 2
end
defmodule Google.Cloud.Vmmigration.V1.MigrationError.ErrorCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
end
defmodule Google.Cloud.Vmmigration.V1.ReplicationCycle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :progress_percent, 5, type: :int32, json_name: "progressPercent"
end
defmodule Google.Cloud.Vmmigration.V1.ReplicationSync do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :last_sync_time, 1, type: Google.Protobuf.Timestamp, json_name: "lastSyncTime"
end
defmodule Google.Cloud.Vmmigration.V1.MigratingVm.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Vmmigration.V1.MigratingVm do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :target_vm_defaults, 0

  field :compute_engine_target_defaults, 26,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults,
    json_name: "computeEngineTargetDefaults",
    oneof: 0

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
end
defmodule Google.Cloud.Vmmigration.V1.CloneJob do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :target_vm_details, 0

  field :compute_engine_target_details, 20,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails,
    json_name: "computeEngineTargetDetails",
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
end
defmodule Google.Cloud.Vmmigration.V1.CutoverJob do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :target_vm_details, 0

  field :compute_engine_target_details, 14,
    type: Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails,
    json_name: "computeEngineTargetDetails",
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
end
defmodule Google.Cloud.Vmmigration.V1.CreateCloneJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.CancelCloneJobResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Vmmigration.V1.ListCloneJobsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.ListCloneJobsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.Source.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Vmmigration.V1.Source do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source_details, 0

  field :vmware, 10, type: Google.Cloud.Vmmigration.V1.VmwareSourceDetails, oneof: 0
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
end
defmodule Google.Cloud.Vmmigration.V1.VmwareSourceDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :username, 1, type: :string
  field :password, 2, type: :string, deprecated: false
  field :vcenter_ip, 3, type: :string, json_name: "vcenterIp"
  field :thumbprint, 4, type: :string
end
defmodule Google.Cloud.Vmmigration.V1.DatacenterConnector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :version, 1, type: :string
  field :state, 2, type: Google.Cloud.Vmmigration.V1.UpgradeStatus.State, enum: true
  field :error, 3, type: Google.Rpc.Status
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :previous_version, 5, type: :string, json_name: "previousVersion"
end
defmodule Google.Cloud.Vmmigration.V1.AvailableUpdates do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :new_deployable_appliance, 1,
    type: Google.Cloud.Vmmigration.V1.ApplianceVersion,
    json_name: "newDeployableAppliance"

  field :in_place_update, 2,
    type: Google.Cloud.Vmmigration.V1.ApplianceVersion,
    json_name: "inPlaceUpdate"
end
defmodule Google.Cloud.Vmmigration.V1.ApplianceVersion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :version, 1, type: :string
  field :uri, 2, type: :string
  field :critical, 3, type: :bool
  field :release_notes_uri, 4, type: :string, json_name: "releaseNotesUri"
end
defmodule Google.Cloud.Vmmigration.V1.ListSourcesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.ListSourcesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :sources, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.Source, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.GetSourceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.CreateSourceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :source_id, 2, type: :string, json_name: "sourceId", deprecated: false
  field :source, 3, type: Google.Cloud.Vmmigration.V1.Source, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Vmmigration.V1.UpdateSourceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :source, 2, type: Google.Cloud.Vmmigration.V1.Source, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Vmmigration.V1.DeleteSourceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.FetchInventoryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :source, 1, type: :string, deprecated: false
  field :force_refresh, 2, type: :bool, json_name: "forceRefresh"
end
defmodule Google.Cloud.Vmmigration.V1.VmwareVmDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
end
defmodule Google.Cloud.Vmmigration.V1.VmwareVmsDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :details, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.VmwareVmDetails
end
defmodule Google.Cloud.Vmmigration.V1.FetchInventoryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :SourceVms, 0

  field :vmware_vms, 1,
    type: Google.Cloud.Vmmigration.V1.VmwareVmsDetails,
    json_name: "vmwareVms",
    oneof: 0

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.UtilizationReport do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Vmmigration.V1.UtilizationReportView,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.CreateUtilizationReportRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.ListDatacenterConnectorsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.CreateDatacenterConnectorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Vmmigration.V1.UpgradeApplianceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :datacenter_connector, 1,
    type: :string,
    json_name: "datacenterConnector",
    deprecated: false

  field :request_id, 2, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Vmmigration.V1.UpgradeApplianceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Vmmigration.V1.ListDatacenterConnectorsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDefaults do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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

  field :service_account, 8, type: :string, json_name: "serviceAccount"

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
end
defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Vmmigration.V1.ComputeEngineTargetDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
end
defmodule Google.Cloud.Vmmigration.V1.NetworkInterface do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :network, 1, type: :string
  field :subnetwork, 2, type: :string
  field :internal_ip, 3, type: :string, json_name: "internalIp"
  field :external_ip, 4, type: :string, json_name: "externalIp"
end
defmodule Google.Cloud.Vmmigration.V1.AppliedLicense do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Vmmigration.V1.AppliedLicense.Type, enum: true
  field :os_license, 2, type: :string, json_name: "osLicense"
end
defmodule Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string

  field :operator, 2,
    type: Google.Cloud.Vmmigration.V1.SchedulingNodeAffinity.Operator,
    enum: true

  field :values, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Vmmigration.V1.ComputeScheduling do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
defmodule Google.Cloud.Vmmigration.V1.SchedulePolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :idle_duration, 1, type: Google.Protobuf.Duration, json_name: "idleDuration"
  field :skip_os_adaptation, 2, type: :bool, json_name: "skipOsAdaptation"
end
defmodule Google.Cloud.Vmmigration.V1.CreateMigratingVmRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :view, 6, type: Google.Cloud.Vmmigration.V1.MigratingVmView, enum: true, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.ListMigratingVmsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Vmmigration.V1.MigratingVmView, enum: true, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.UpdateMigratingVmRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :migrating_vm, 2,
    type: Google.Cloud.Vmmigration.V1.MigratingVm,
    json_name: "migratingVm",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Vmmigration.V1.DeleteMigratingVmRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.StartMigrationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :migrating_vm, 1, type: :string, json_name: "migratingVm", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.StartMigrationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Vmmigration.V1.PauseMigrationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :migrating_vm, 1, type: :string, json_name: "migratingVm", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.PauseMigrationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Vmmigration.V1.ResumeMigrationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :migrating_vm, 1, type: :string, json_name: "migratingVm", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.ResumeMigrationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Vmmigration.V1.FinalizeMigrationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :migrating_vm, 1, type: :string, json_name: "migratingVm", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.FinalizeMigrationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Vmmigration.V1.TargetProject do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :project, 2, type: :string
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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.ListTargetProjectsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.ListTargetProjectsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :target_project, 2,
    type: Google.Cloud.Vmmigration.V1.TargetProject,
    json_name: "targetProject",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Vmmigration.V1.DeleteTargetProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.Group do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
end
defmodule Google.Cloud.Vmmigration.V1.ListGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.ListGroupsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :groups, 1, repeated: true, type: Google.Cloud.Vmmigration.V1.Group, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.GetGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.CreateGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :group_id, 2, type: :string, json_name: "groupId", deprecated: false
  field :group, 3, type: Google.Cloud.Vmmigration.V1.Group, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Vmmigration.V1.UpdateGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :group, 2, type: Google.Cloud.Vmmigration.V1.Group, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Vmmigration.V1.DeleteGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.AddGroupMigrationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :group, 1, type: :string, deprecated: false
  field :migrating_vm, 2, type: :string, json_name: "migratingVm", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.AddGroupMigrationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Vmmigration.V1.RemoveGroupMigrationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :group, 1, type: :string, deprecated: false
  field :migrating_vm, 2, type: :string, json_name: "migratingVm", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.RemoveGroupMigrationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Vmmigration.V1.CreateCutoverJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.CancelCutoverJobResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Vmmigration.V1.ListCutoverJobsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.ListCutoverJobsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vmmigration.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
defmodule Google.Cloud.Vmmigration.V1.VmMigration.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.vmmigration.v1.VmMigration",
    protoc_gen_elixir_version: "0.10.0"

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
end

defmodule Google.Cloud.Vmmigration.V1.VmMigration.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Vmmigration.V1.VmMigration.Service
end
