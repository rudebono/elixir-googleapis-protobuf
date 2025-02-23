defmodule Google.Cloud.Migrationcenter.V1.AssetView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ASSET_VIEW_UNSPECIFIED, 0
  field :ASSET_VIEW_BASIC, 1
  field :ASSET_VIEW_FULL, 2
end

defmodule Google.Cloud.Migrationcenter.V1.OperatingSystemFamily do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OS_FAMILY_UNKNOWN, 0
  field :OS_FAMILY_WINDOWS, 1
  field :OS_FAMILY_LINUX, 2
  field :OS_FAMILY_UNIX, 3
end

defmodule Google.Cloud.Migrationcenter.V1.ImportJobFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :IMPORT_JOB_FORMAT_UNSPECIFIED, 0
  field :IMPORT_JOB_FORMAT_RVTOOLS_XLSX, 1
  field :IMPORT_JOB_FORMAT_RVTOOLS_CSV, 2
  field :IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV, 4
  field :IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV, 5
  field :IMPORT_JOB_FORMAT_STRATOZONE_CSV, 6
end

defmodule Google.Cloud.Migrationcenter.V1.ImportJobView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :IMPORT_JOB_VIEW_UNSPECIFIED, 0
  field :IMPORT_JOB_VIEW_BASIC, 1
  field :IMPORT_JOB_VIEW_FULL, 2
end

defmodule Google.Cloud.Migrationcenter.V1.ErrorFrameView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ERROR_FRAME_VIEW_UNSPECIFIED, 0
  field :ERROR_FRAME_VIEW_BASIC, 1
  field :ERROR_FRAME_VIEW_FULL, 2
end

defmodule Google.Cloud.Migrationcenter.V1.PersistentDiskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PERSISTENT_DISK_TYPE_UNSPECIFIED, 0
  field :PERSISTENT_DISK_TYPE_STANDARD, 1
  field :PERSISTENT_DISK_TYPE_BALANCED, 2
  field :PERSISTENT_DISK_TYPE_SSD, 3
end

defmodule Google.Cloud.Migrationcenter.V1.LicenseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LICENSE_TYPE_UNSPECIFIED, 0
  field :LICENSE_TYPE_DEFAULT, 1
  field :LICENSE_TYPE_BRING_YOUR_OWN_LICENSE, 2
end

defmodule Google.Cloud.Migrationcenter.V1.SizingOptimizationStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED, 0
  field :SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE, 1
  field :SIZING_OPTIMIZATION_STRATEGY_MODERATE, 2
  field :SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE, 3
end

defmodule Google.Cloud.Migrationcenter.V1.CommitmentPlan do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COMMITMENT_PLAN_UNSPECIFIED, 0
  field :COMMITMENT_PLAN_NONE, 1
  field :COMMITMENT_PLAN_ONE_YEAR, 2
  field :COMMITMENT_PLAN_THREE_YEARS, 3
end

defmodule Google.Cloud.Migrationcenter.V1.ComputeMigrationTargetProduct do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COMPUTE_MIGRATION_TARGET_PRODUCT_UNSPECIFIED, 0
  field :COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE, 1
  field :COMPUTE_MIGRATION_TARGET_PRODUCT_VMWARE_ENGINE, 2
  field :COMPUTE_MIGRATION_TARGET_PRODUCT_SOLE_TENANCY, 3
end

defmodule Google.Cloud.Migrationcenter.V1.ReportView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REPORT_VIEW_UNSPECIFIED, 0
  field :REPORT_VIEW_BASIC, 1
  field :REPORT_VIEW_FULL, 2
  field :REPORT_VIEW_STANDARD, 3
end

defmodule Google.Cloud.Migrationcenter.V1.ImportJob.ImportJobState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :IMPORT_JOB_STATE_UNSPECIFIED, 0
  field :IMPORT_JOB_STATE_PENDING, 1
  field :IMPORT_JOB_STATE_RUNNING, 2
  field :IMPORT_JOB_STATE_COMPLETED, 3
  field :IMPORT_JOB_STATE_FAILED, 4
  field :IMPORT_JOB_STATE_VALIDATING, 5
  field :IMPORT_JOB_STATE_FAILED_VALIDATION, 6
  field :IMPORT_JOB_STATE_READY, 7
end

defmodule Google.Cloud.Migrationcenter.V1.ImportDataFile.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
end

defmodule Google.Cloud.Migrationcenter.V1.Source.SourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SOURCE_TYPE_UNKNOWN, 0
  field :SOURCE_TYPE_UPLOAD, 1
  field :SOURCE_TYPE_GUEST_OS_SCAN, 2
  field :SOURCE_TYPE_INVENTORY_SCAN, 3
  field :SOURCE_TYPE_CUSTOM, 4
end

defmodule Google.Cloud.Migrationcenter.V1.Source.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETING, 2
  field :INVALID, 3
end

defmodule Google.Cloud.Migrationcenter.V1.Report.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TOTAL_COST_OF_OWNERSHIP, 1
end

defmodule Google.Cloud.Migrationcenter.V1.Report.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Migrationcenter.V1.MachineDetails.PowerState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :POWER_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ACTIVE, 2
  field :SUSPENDING, 3
  field :SUSPENDED, 4
  field :DELETING, 5
  field :DELETED, 6
end

defmodule Google.Cloud.Migrationcenter.V1.MachineArchitectureDetails.FirmwareType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FIRMWARE_TYPE_UNSPECIFIED, 0
  field :BIOS, 1
  field :EFI, 2
end

defmodule Google.Cloud.Migrationcenter.V1.MachineArchitectureDetails.CpuHyperThreading do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CPU_HYPER_THREADING_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
end

defmodule Google.Cloud.Migrationcenter.V1.NetworkAddress.AddressAssignment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ADDRESS_ASSIGNMENT_UNSPECIFIED, 0
  field :ADDRESS_ASSIGNMENT_STATIC, 1
  field :ADDRESS_ASSIGNMENT_DHCP, 2
end

defmodule Google.Cloud.Migrationcenter.V1.DiskEntry.InterfaceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INTERFACE_TYPE_UNSPECIFIED, 0
  field :IDE, 1
  field :SATA, 2
  field :SAS, 3
  field :SCSI, 4
  field :NVME, 5
  field :FC, 6
  field :ISCSI, 7
end

defmodule Google.Cloud.Migrationcenter.V1.VmwareDiskConfig.BackingType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BACKING_TYPE_UNSPECIFIED, 0
  field :BACKING_TYPE_FLAT_V1, 1
  field :BACKING_TYPE_FLAT_V2, 2
  field :BACKING_TYPE_PMEM, 3
  field :BACKING_TYPE_RDM_V1, 4
  field :BACKING_TYPE_RDM_V2, 5
  field :BACKING_TYPE_SESPARSE, 6
  field :BACKING_TYPE_SESPARSE_V1, 7
  field :BACKING_TYPE_SESPARSE_V2, 8
end

defmodule Google.Cloud.Migrationcenter.V1.VmwareDiskConfig.VmdkMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :VMDK_MODE_UNSPECIFIED, 0
  field :DEPENDENT, 1
  field :INDEPENDENT_PERSISTENT, 2
  field :INDEPENDENT_NONPERSISTENT, 3
end

defmodule Google.Cloud.Migrationcenter.V1.VmwareDiskConfig.RdmCompatibility do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RDM_COMPATIBILITY_UNSPECIFIED, 0
  field :PHYSICAL_COMPATIBILITY, 1
  field :VIRTUAL_COMPATIBILITY, 2
end

defmodule Google.Cloud.Migrationcenter.V1.GuestConfigDetails.SeLinuxMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SE_LINUX_MODE_UNSPECIFIED, 0
  field :SE_LINUX_MODE_DISABLED, 1
  field :SE_LINUX_MODE_PERMISSIVE, 2
  field :SE_LINUX_MODE_ENFORCING, 3
end

defmodule Google.Cloud.Migrationcenter.V1.RunningService.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :PAUSED, 2
  field :STOPPED, 3
end

defmodule Google.Cloud.Migrationcenter.V1.RunningService.StartMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :START_MODE_UNSPECIFIED, 0
  field :BOOT, 1
  field :SYSTEM, 2
  field :AUTO, 3
  field :MANUAL, 4
  field :DISABLED, 5
end

defmodule Google.Cloud.Migrationcenter.V1.NetworkConnection.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :OPENING, 1
  field :OPEN, 2
  field :LISTEN, 3
  field :CLOSING, 4
  field :CLOSED, 5
end

defmodule Google.Cloud.Migrationcenter.V1.FitDescriptor.FitLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FIT_LEVEL_UNSPECIFIED, 0
  field :FIT, 1
  field :NO_FIT, 2
  field :REQUIRES_EFFORT, 3
end

defmodule Google.Cloud.Migrationcenter.V1.ImportError.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :ERROR, 1
  field :WARNING, 2
  field :INFO, 3
end

defmodule Google.Cloud.Migrationcenter.V1.VmwareEnginePreferences.CommitmentPlan do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COMMITMENT_PLAN_UNSPECIFIED, 0
  field :ON_DEMAND, 1
  field :COMMITMENT_1_YEAR_MONTHLY_PAYMENTS, 2
  field :COMMITMENT_3_YEAR_MONTHLY_PAYMENTS, 3
  field :COMMITMENT_1_YEAR_UPFRONT_PAYMENT, 4
  field :COMMITMENT_3_YEAR_UPFRONT_PAYMENT, 5
end

defmodule Google.Cloud.Migrationcenter.V1.SoleTenancyPreferences.HostMaintenancePolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HOST_MAINTENANCE_POLICY_UNSPECIFIED, 0
  field :HOST_MAINTENANCE_POLICY_DEFAULT, 1
  field :HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE, 2
  field :HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP, 3
end

defmodule Google.Cloud.Migrationcenter.V1.SoleTenancyPreferences.CommitmentPlan do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COMMITMENT_PLAN_UNSPECIFIED, 0
  field :ON_DEMAND, 1
  field :COMMITMENT_1_YEAR, 2
  field :COMMITMENT_3_YEAR, 3
end

defmodule Google.Cloud.Migrationcenter.V1.Asset.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.Asset.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.Asset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :AssetDetails, 0

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
    type: Google.Cloud.Migrationcenter.V1.Asset.LabelsEntry,
    map: true

  field :attributes, 5,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.Asset.AttributesEntry,
    map: true

  field :machine_details, 6,
    type: Google.Cloud.Migrationcenter.V1.MachineDetails,
    json_name: "machineDetails",
    oneof: 0,
    deprecated: false

  field :insight_list, 20,
    type: Google.Cloud.Migrationcenter.V1.InsightList,
    json_name: "insightList",
    deprecated: false

  field :performance_data, 21,
    type: Google.Cloud.Migrationcenter.V1.AssetPerformanceData,
    json_name: "performanceData",
    deprecated: false

  field :sources, 22, repeated: true, type: :string, deprecated: false

  field :assigned_groups, 23,
    repeated: true,
    type: :string,
    json_name: "assignedGroups",
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.PreferenceSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :display_name, 4, type: :string, json_name: "displayName"
  field :description, 5, type: :string

  field :virtual_machine_preferences, 6,
    type: Google.Cloud.Migrationcenter.V1.VirtualMachinePreferences,
    json_name: "virtualMachinePreferences"
end

defmodule Google.Cloud.Migrationcenter.V1.ImportJob.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.ImportJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :report, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :complete_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "completeTime",
    deprecated: false

  field :state, 6,
    type: Google.Cloud.Migrationcenter.V1.ImportJob.ImportJobState,
    enum: true,
    deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ImportJob.LabelsEntry,
    map: true

  field :asset_source, 8, type: :string, json_name: "assetSource", deprecated: false

  field :validation_report, 10,
    type: Google.Cloud.Migrationcenter.V1.ValidationReport,
    json_name: "validationReport",
    oneof: 0,
    deprecated: false

  field :execution_report, 11,
    type: Google.Cloud.Migrationcenter.V1.ExecutionReport,
    json_name: "executionReport",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ImportDataFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :file_info, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName"

  field :format, 2,
    type: Google.Cloud.Migrationcenter.V1.ImportJobFormat,
    enum: true,
    deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Migrationcenter.V1.ImportDataFile.State,
    enum: true,
    deprecated: false

  field :upload_file_info, 5,
    type: Google.Cloud.Migrationcenter.V1.UploadFileInfo,
    json_name: "uploadFileInfo",
    oneof: 0
end

defmodule Google.Cloud.Migrationcenter.V1.Group.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.Group do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    type: Google.Cloud.Migrationcenter.V1.Group.LabelsEntry,
    map: true

  field :display_name, 5, type: :string, json_name: "displayName"
  field :description, 6, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.ErrorFrame do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :violations, 2,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.FrameViolationEntry,
    deprecated: false

  field :original_frame, 3,
    type: Google.Cloud.Migrationcenter.V1.AssetFrame,
    json_name: "originalFrame",
    deprecated: false

  field :ingestion_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "ingestionTime",
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.Source do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :display_name, 4, type: :string, json_name: "displayName"
  field :description, 5, type: :string
  field :type, 6, type: Google.Cloud.Migrationcenter.V1.Source.SourceType, enum: true
  field :priority, 7, type: :int32
  field :managed, 8, type: :bool
  field :pending_frame_count, 9, type: :int32, json_name: "pendingFrameCount", deprecated: false
  field :error_frame_count, 10, type: :int32, json_name: "errorFrameCount", deprecated: false

  field :state, 11,
    type: Google.Cloud.Migrationcenter.V1.Source.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ReportConfig.GroupPreferenceSetAssignment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :group, 1, type: :string, deprecated: false
  field :preference_set, 2, type: :string, json_name: "preferenceSet", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ReportConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :display_name, 4, type: :string, json_name: "displayName"
  field :description, 5, type: :string

  field :group_preferenceset_assignments, 6,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ReportConfig.GroupPreferenceSetAssignment,
    json_name: "groupPreferencesetAssignments",
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.Report do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :display_name, 4, type: :string, json_name: "displayName"
  field :description, 5, type: :string
  field :type, 6, type: Google.Cloud.Migrationcenter.V1.Report.Type, enum: true
  field :state, 7, type: Google.Cloud.Migrationcenter.V1.Report.State, enum: true
  field :summary, 8, type: Google.Cloud.Migrationcenter.V1.ReportSummary, deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Migrationcenter.V1.ListAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :view, 6, type: Google.Cloud.Migrationcenter.V1.AssetView, enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.ListAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :assets, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.Asset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.GetAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Migrationcenter.V1.AssetView, enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.UpdateAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :asset, 2, type: Google.Cloud.Migrationcenter.V1.Asset, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.BatchUpdateAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.UpdateAssetRequest,
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.BatchUpdateAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :assets, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.Asset
end

defmodule Google.Cloud.Migrationcenter.V1.DeleteAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.BatchDeleteAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ReportAssetFramesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :frames, 2, type: Google.Cloud.Migrationcenter.V1.Frames
  field :source, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ReportAssetFramesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Migrationcenter.V1.AggregateAssetsValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :aggregations, 2, repeated: true, type: Google.Cloud.Migrationcenter.V1.Aggregation
  field :filter, 3, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.AggregateAssetsValuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.AggregationResult
end

defmodule Google.Cloud.Migrationcenter.V1.CreateImportJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :import_job_id, 2, type: :string, json_name: "importJobId", deprecated: false

  field :import_job, 3,
    type: Google.Cloud.Migrationcenter.V1.ImportJob,
    json_name: "importJob",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ListImportJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  field :view, 6,
    type: Google.Cloud.Migrationcenter.V1.ImportJobView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ListImportJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :import_jobs, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ImportJob,
    json_name: "importJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.GetImportJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Migrationcenter.V1.ImportJobView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.DeleteImportJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.UpdateImportJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :import_job, 2,
    type: Google.Cloud.Migrationcenter.V1.ImportJob,
    json_name: "importJob",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ValidateImportJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.RunImportJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.GetImportDataFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ListImportDataFilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Migrationcenter.V1.ListImportDataFilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :import_data_files, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ImportDataFile,
    json_name: "importDataFiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.CreateImportDataFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :import_data_file_id, 2, type: :string, json_name: "importDataFileId", deprecated: false

  field :import_data_file, 3,
    type: Google.Cloud.Migrationcenter.V1.ImportDataFile,
    json_name: "importDataFile",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.DeleteImportDataFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ListGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Migrationcenter.V1.ListGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :groups, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.Group
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.GetGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.CreateGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :group_id, 2, type: :string, json_name: "groupId", deprecated: false
  field :group, 3, type: Google.Cloud.Migrationcenter.V1.Group, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.UpdateGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :group, 2, type: Google.Cloud.Migrationcenter.V1.Group, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.DeleteGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.AddAssetsToGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :group, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :assets, 3, type: Google.Cloud.Migrationcenter.V1.AssetList, deprecated: false
  field :allow_existing, 4, type: :bool, json_name: "allowExisting", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.RemoveAssetsFromGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :group, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :assets, 3, type: Google.Cloud.Migrationcenter.V1.AssetList, deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ListErrorFramesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :view, 4,
    type: Google.Cloud.Migrationcenter.V1.ErrorFrameView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ListErrorFramesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_frames, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ErrorFrame,
    json_name: "errorFrames"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.GetErrorFrameRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Migrationcenter.V1.ErrorFrameView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ListSourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Migrationcenter.V1.ListSourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sources, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.Source
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.GetSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.CreateSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :source_id, 2, type: :string, json_name: "sourceId", deprecated: false
  field :source, 3, type: Google.Cloud.Migrationcenter.V1.Source, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.UpdateSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :source, 2, type: Google.Cloud.Migrationcenter.V1.Source, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.DeleteSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ListPreferenceSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Migrationcenter.V1.ListPreferenceSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :preference_sets, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.PreferenceSet,
    json_name: "preferenceSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.GetPreferenceSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.CreatePreferenceSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :preference_set_id, 2, type: :string, json_name: "preferenceSetId", deprecated: false

  field :preference_set, 3,
    type: Google.Cloud.Migrationcenter.V1.PreferenceSet,
    json_name: "preferenceSet",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.UpdatePreferenceSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :preference_set, 2,
    type: Google.Cloud.Migrationcenter.V1.PreferenceSet,
    json_name: "preferenceSet",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.DeletePreferenceSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.GetSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.UpdateSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :settings, 2, type: Google.Cloud.Migrationcenter.V1.Settings, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.CreateReportConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :report_config_id, 2, type: :string, json_name: "reportConfigId", deprecated: false

  field :report_config, 3,
    type: Google.Cloud.Migrationcenter.V1.ReportConfig,
    json_name: "reportConfig",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.DeleteReportConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.GetReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 6, type: Google.Cloud.Migrationcenter.V1.ReportView, enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.ListReportsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :view, 6, type: Google.Cloud.Migrationcenter.V1.ReportView, enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.ListReportsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reports, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.Report
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.DeleteReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.GetReportConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ListReportConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Migrationcenter.V1.ListReportConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :report_configs, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ReportConfig,
    json_name: "reportConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.CreateReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :report_id, 2, type: :string, json_name: "reportId", deprecated: false
  field :report, 3, type: Google.Cloud.Migrationcenter.V1.Report, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.Frames do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :frames_data, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.AssetFrame,
    json_name: "framesData"
end

defmodule Google.Cloud.Migrationcenter.V1.AssetFrame.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.AssetFrame.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.AssetFrame do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :FrameData, 0

  field :machine_details, 1,
    type: Google.Cloud.Migrationcenter.V1.MachineDetails,
    json_name: "machineDetails",
    oneof: 0

  field :report_time, 10, type: Google.Protobuf.Timestamp, json_name: "reportTime"

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.AssetFrame.LabelsEntry,
    map: true

  field :attributes, 12,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.AssetFrame.AttributesEntry,
    map: true

  field :performance_samples, 13,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.PerformanceSample,
    json_name: "performanceSamples"

  field :trace_token, 14, type: :string, json_name: "traceToken", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.MachineDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uuid, 1, type: :string
  field :machine_name, 2, type: :string, json_name: "machineName"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :core_count, 4, type: :int32, json_name: "coreCount"
  field :memory_mb, 5, type: :int32, json_name: "memoryMb"

  field :power_state, 6,
    type: Google.Cloud.Migrationcenter.V1.MachineDetails.PowerState,
    json_name: "powerState",
    enum: true

  field :architecture, 7, type: Google.Cloud.Migrationcenter.V1.MachineArchitectureDetails
  field :guest_os, 8, type: Google.Cloud.Migrationcenter.V1.GuestOsDetails, json_name: "guestOs"
  field :network, 9, type: Google.Cloud.Migrationcenter.V1.MachineNetworkDetails
  field :disks, 10, type: Google.Cloud.Migrationcenter.V1.MachineDiskDetails
  field :platform, 11, type: Google.Cloud.Migrationcenter.V1.PlatformDetails
end

defmodule Google.Cloud.Migrationcenter.V1.MachineArchitectureDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cpu_architecture, 1, type: :string, json_name: "cpuArchitecture"
  field :cpu_name, 2, type: :string, json_name: "cpuName"
  field :vendor, 3, type: :string
  field :cpu_thread_count, 4, type: :int32, json_name: "cpuThreadCount"
  field :cpu_socket_count, 5, type: :int32, json_name: "cpuSocketCount"
  field :bios, 6, type: Google.Cloud.Migrationcenter.V1.BiosDetails

  field :firmware_type, 7,
    type: Google.Cloud.Migrationcenter.V1.MachineArchitectureDetails.FirmwareType,
    json_name: "firmwareType",
    enum: true

  field :hyperthreading, 8,
    type: Google.Cloud.Migrationcenter.V1.MachineArchitectureDetails.CpuHyperThreading,
    enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.BiosDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bios_name, 1, type: :string, json_name: "biosName", deprecated: true
  field :id, 2, type: :string
  field :manufacturer, 3, type: :string
  field :version, 4, type: :string
  field :release_date, 5, type: Google.Type.Date, json_name: "releaseDate"
  field :smbios_uuid, 6, type: :string, json_name: "smbiosUuid"
end

defmodule Google.Cloud.Migrationcenter.V1.MachineNetworkDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :primary_ip_address, 1, type: :string, json_name: "primaryIpAddress"
  field :public_ip_address, 2, type: :string, json_name: "publicIpAddress"
  field :primary_mac_address, 3, type: :string, json_name: "primaryMacAddress"
  field :adapters, 4, type: Google.Cloud.Migrationcenter.V1.NetworkAdapterList
end

defmodule Google.Cloud.Migrationcenter.V1.NetworkAdapterList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.NetworkAdapterDetails
end

defmodule Google.Cloud.Migrationcenter.V1.NetworkAdapterDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :adapter_type, 1, type: :string, json_name: "adapterType"
  field :mac_address, 2, type: :string, json_name: "macAddress"
  field :addresses, 3, type: Google.Cloud.Migrationcenter.V1.NetworkAddressList
end

defmodule Google.Cloud.Migrationcenter.V1.NetworkAddressList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.NetworkAddress
end

defmodule Google.Cloud.Migrationcenter.V1.NetworkAddress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ip_address, 1, type: :string, json_name: "ipAddress"
  field :subnet_mask, 2, type: :string, json_name: "subnetMask"
  field :bcast, 3, type: :string
  field :fqdn, 4, type: :string

  field :assignment, 5,
    type: Google.Cloud.Migrationcenter.V1.NetworkAddress.AddressAssignment,
    enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.MachineDiskDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :total_capacity_bytes, 1, type: :int64, json_name: "totalCapacityBytes"
  field :total_free_bytes, 2, type: :int64, json_name: "totalFreeBytes"
  field :disks, 3, type: Google.Cloud.Migrationcenter.V1.DiskEntryList
end

defmodule Google.Cloud.Migrationcenter.V1.DiskEntryList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.DiskEntry
end

defmodule Google.Cloud.Migrationcenter.V1.DiskEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :platform_specific, 0

  field :capacity_bytes, 1, type: :int64, json_name: "capacityBytes"
  field :free_bytes, 2, type: :int64, json_name: "freeBytes"
  field :disk_label, 3, type: :string, json_name: "diskLabel"
  field :disk_label_type, 4, type: :string, json_name: "diskLabelType"

  field :interface_type, 5,
    type: Google.Cloud.Migrationcenter.V1.DiskEntry.InterfaceType,
    json_name: "interfaceType",
    enum: true

  field :partitions, 6, type: Google.Cloud.Migrationcenter.V1.DiskPartitionList
  field :hw_address, 7, type: :string, json_name: "hwAddress"
  field :vmware, 20, type: Google.Cloud.Migrationcenter.V1.VmwareDiskConfig, oneof: 0
end

defmodule Google.Cloud.Migrationcenter.V1.DiskPartitionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.DiskPartition
end

defmodule Google.Cloud.Migrationcenter.V1.DiskPartition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: :string
  field :file_system, 2, type: :string, json_name: "fileSystem"
  field :mount_point, 3, type: :string, json_name: "mountPoint"
  field :capacity_bytes, 4, type: :int64, json_name: "capacityBytes"
  field :free_bytes, 5, type: :int64, json_name: "freeBytes"
  field :uuid, 6, type: :string

  field :sub_partitions, 7,
    type: Google.Cloud.Migrationcenter.V1.DiskPartitionList,
    json_name: "subPartitions"
end

defmodule Google.Cloud.Migrationcenter.V1.VmwareDiskConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backing_type, 1,
    type: Google.Cloud.Migrationcenter.V1.VmwareDiskConfig.BackingType,
    json_name: "backingType",
    enum: true

  field :shared, 2, type: :bool

  field :vmdk_mode, 3,
    type: Google.Cloud.Migrationcenter.V1.VmwareDiskConfig.VmdkMode,
    json_name: "vmdkMode",
    enum: true

  field :rdm_compatibility, 4,
    type: Google.Cloud.Migrationcenter.V1.VmwareDiskConfig.RdmCompatibility,
    json_name: "rdmCompatibility",
    enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.GuestOsDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :os_name, 1, type: :string, json_name: "osName"
  field :family, 2, type: Google.Cloud.Migrationcenter.V1.OperatingSystemFamily, enum: true
  field :version, 3, type: :string
  field :config, 4, type: Google.Cloud.Migrationcenter.V1.GuestConfigDetails
  field :runtime, 5, type: Google.Cloud.Migrationcenter.V1.GuestRuntimeDetails
end

defmodule Google.Cloud.Migrationcenter.V1.GuestConfigDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :issue, 1, type: :string
  field :fstab, 2, type: Google.Cloud.Migrationcenter.V1.FstabEntryList
  field :hosts, 3, type: Google.Cloud.Migrationcenter.V1.HostsEntryList

  field :nfs_exports, 4,
    type: Google.Cloud.Migrationcenter.V1.NfsExportList,
    json_name: "nfsExports"

  field :selinux_mode, 5,
    type: Google.Cloud.Migrationcenter.V1.GuestConfigDetails.SeLinuxMode,
    json_name: "selinuxMode",
    enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.FstabEntryList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.FstabEntry
end

defmodule Google.Cloud.Migrationcenter.V1.FstabEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :spec, 1, type: :string
  field :file, 2, type: :string
  field :vfstype, 3, type: :string
  field :mntops, 4, type: :string
  field :freq, 5, type: :int32
  field :passno, 6, type: :int32
end

defmodule Google.Cloud.Migrationcenter.V1.HostsEntryList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.HostsEntry
end

defmodule Google.Cloud.Migrationcenter.V1.HostsEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ip, 1, type: :string
  field :host_names, 2, repeated: true, type: :string, json_name: "hostNames"
end

defmodule Google.Cloud.Migrationcenter.V1.NfsExportList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.NfsExport
end

defmodule Google.Cloud.Migrationcenter.V1.NfsExport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :export_directory, 1, type: :string, json_name: "exportDirectory"
  field :hosts, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.GuestRuntimeDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :services, 1, type: Google.Cloud.Migrationcenter.V1.RunningServiceList
  field :processes, 2, type: Google.Cloud.Migrationcenter.V1.RunningProcessList
  field :network, 3, type: Google.Cloud.Migrationcenter.V1.RuntimeNetworkInfo
  field :last_boot_time, 4, type: Google.Protobuf.Timestamp, json_name: "lastBootTime"
  field :domain, 5, type: :string
  field :machine_name, 6, type: :string, json_name: "machineName"

  field :installed_apps, 7,
    type: Google.Cloud.Migrationcenter.V1.GuestInstalledApplicationList,
    json_name: "installedApps"

  field :open_file_list, 8,
    type: Google.Cloud.Migrationcenter.V1.OpenFileList,
    json_name: "openFileList"
end

defmodule Google.Cloud.Migrationcenter.V1.RunningServiceList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.RunningService
end

defmodule Google.Cloud.Migrationcenter.V1.RunningService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName"
  field :state, 2, type: Google.Cloud.Migrationcenter.V1.RunningService.State, enum: true

  field :start_mode, 3,
    type: Google.Cloud.Migrationcenter.V1.RunningService.StartMode,
    json_name: "startMode",
    enum: true

  field :exe_path, 4, type: :string, json_name: "exePath"
  field :cmdline, 5, type: :string
  field :pid, 6, type: :int64
end

defmodule Google.Cloud.Migrationcenter.V1.RunningProcessList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.RunningProcess
end

defmodule Google.Cloud.Migrationcenter.V1.RunningProcess.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.RunningProcess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :pid, 1, type: :int64
  field :exe_path, 2, type: :string, json_name: "exePath"
  field :cmdline, 3, type: :string
  field :user, 4, type: :string

  field :attributes, 100,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.RunningProcess.AttributesEntry,
    map: true
end

defmodule Google.Cloud.Migrationcenter.V1.RuntimeNetworkInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :scan_time, 1, type: Google.Protobuf.Timestamp, json_name: "scanTime"
  field :connections, 2, type: Google.Cloud.Migrationcenter.V1.NetworkConnectionList
end

defmodule Google.Cloud.Migrationcenter.V1.NetworkConnectionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.NetworkConnection
end

defmodule Google.Cloud.Migrationcenter.V1.NetworkConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :protocol, 1, type: :string
  field :local_ip_address, 2, type: :string, json_name: "localIpAddress"
  field :local_port, 3, type: :int32, json_name: "localPort"
  field :remote_ip_address, 4, type: :string, json_name: "remoteIpAddress"
  field :remote_port, 5, type: :int32, json_name: "remotePort"
  field :state, 6, type: Google.Cloud.Migrationcenter.V1.NetworkConnection.State, enum: true
  field :pid, 7, type: :int64
  field :process_name, 8, type: :string, json_name: "processName"
end

defmodule Google.Cloud.Migrationcenter.V1.GuestInstalledApplicationList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.GuestInstalledApplication
end

defmodule Google.Cloud.Migrationcenter.V1.GuestInstalledApplication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :application_name, 1, type: :string, json_name: "applicationName"
  field :vendor, 2, type: :string
  field :install_time, 3, type: Google.Protobuf.Timestamp, json_name: "installTime"
  field :path, 4, type: :string
  field :version, 5, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.OpenFileList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Migrationcenter.V1.OpenFileDetails
end

defmodule Google.Cloud.Migrationcenter.V1.OpenFileDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :command, 1, type: :string
  field :user, 2, type: :string
  field :file_type, 3, type: :string, json_name: "fileType"
  field :file_path, 4, type: :string, json_name: "filePath"
end

defmodule Google.Cloud.Migrationcenter.V1.PlatformDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :vendor_details, 0

  field :vmware_details, 1,
    type: Google.Cloud.Migrationcenter.V1.VmwarePlatformDetails,
    json_name: "vmwareDetails",
    oneof: 0

  field :aws_ec2_details, 2,
    type: Google.Cloud.Migrationcenter.V1.AwsEc2PlatformDetails,
    json_name: "awsEc2Details",
    oneof: 0

  field :azure_vm_details, 3,
    type: Google.Cloud.Migrationcenter.V1.AzureVmPlatformDetails,
    json_name: "azureVmDetails",
    oneof: 0

  field :generic_details, 4,
    type: Google.Cloud.Migrationcenter.V1.GenericPlatformDetails,
    json_name: "genericDetails",
    oneof: 0

  field :physical_details, 5,
    type: Google.Cloud.Migrationcenter.V1.PhysicalPlatformDetails,
    json_name: "physicalDetails",
    oneof: 0
end

defmodule Google.Cloud.Migrationcenter.V1.VmwarePlatformDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :vcenter_version, 1, type: :string, json_name: "vcenterVersion"
  field :esx_version, 2, type: :string, json_name: "esxVersion"
  field :osid, 3, type: :string
  field :vcenter_folder, 4, type: :string, json_name: "vcenterFolder"
  field :vcenter_uri, 5, type: :string, json_name: "vcenterUri"
  field :vcenter_vm_id, 6, type: :string, json_name: "vcenterVmId"
end

defmodule Google.Cloud.Migrationcenter.V1.AwsEc2PlatformDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :machine_type_label, 1, type: :string, json_name: "machineTypeLabel"
  field :location, 2, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.AzureVmPlatformDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :machine_type_label, 1, type: :string, json_name: "machineTypeLabel"
  field :location, 2, type: :string
  field :provisioning_state, 3, type: :string, json_name: "provisioningState"
end

defmodule Google.Cloud.Migrationcenter.V1.GenericPlatformDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.PhysicalPlatformDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.MemoryUsageSample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :utilized_percentage, 1, type: :float, json_name: "utilizedPercentage"
end

defmodule Google.Cloud.Migrationcenter.V1.CpuUsageSample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :utilized_percentage, 1, type: :float, json_name: "utilizedPercentage"
end

defmodule Google.Cloud.Migrationcenter.V1.NetworkUsageSample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :average_ingress_bps, 1, type: :float, json_name: "averageIngressBps"
  field :average_egress_bps, 2, type: :float, json_name: "averageEgressBps"
end

defmodule Google.Cloud.Migrationcenter.V1.DiskUsageSample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :average_iops, 1, type: :float, json_name: "averageIops"
end

defmodule Google.Cloud.Migrationcenter.V1.PerformanceSample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sample_time, 1, type: Google.Protobuf.Timestamp, json_name: "sampleTime"
  field :memory, 2, type: Google.Cloud.Migrationcenter.V1.MemoryUsageSample
  field :cpu, 3, type: Google.Cloud.Migrationcenter.V1.CpuUsageSample
  field :network, 4, type: Google.Cloud.Migrationcenter.V1.NetworkUsageSample
  field :disk, 5, type: Google.Cloud.Migrationcenter.V1.DiskUsageSample
end

defmodule Google.Cloud.Migrationcenter.V1.AssetPerformanceData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :daily_resource_usage_aggregations, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation,
    json_name: "dailyResourceUsageAggregations"
end

defmodule Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Stats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :average, 1, type: :float
  field :median, 2, type: :float
  field :nintey_fifth_percentile, 3, type: :float, json_name: "ninteyFifthPercentile"
  field :peak, 4, type: :float
end

defmodule Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.CPU do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :utilization_percentage, 1,
    type: Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Stats,
    json_name: "utilizationPercentage"
end

defmodule Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Memory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :utilization_percentage, 1,
    type: Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Stats,
    json_name: "utilizationPercentage"
end

defmodule Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Network do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ingress_bps, 1,
    type: Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Stats,
    json_name: "ingressBps"

  field :egress_bps, 2,
    type: Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Stats,
    json_name: "egressBps"
end

defmodule Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Disk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :iops, 1, type: Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Stats
end

defmodule Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :date, 1, type: Google.Type.Date
  field :cpu, 2, type: Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.CPU
  field :memory, 3, type: Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Memory
  field :network, 4, type: Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Network
  field :disk, 5, type: Google.Cloud.Migrationcenter.V1.DailyResourceUsageAggregation.Disk
end

defmodule Google.Cloud.Migrationcenter.V1.InsightList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :insights, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.Insight,
    deprecated: false

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.Insight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :insight, 0

  field :migration_insight, 1,
    type: Google.Cloud.Migrationcenter.V1.MigrationInsight,
    json_name: "migrationInsight",
    oneof: 0,
    deprecated: false

  field :generic_insight, 2,
    type: Google.Cloud.Migrationcenter.V1.GenericInsight,
    json_name: "genericInsight",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.GenericInsight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :message_id, 1, type: :int64, json_name: "messageId", deprecated: false
  field :default_message, 2, type: :string, json_name: "defaultMessage", deprecated: false

  field :additional_information, 3,
    repeated: true,
    type: :string,
    json_name: "additionalInformation",
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.MigrationInsight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :migration_target, 0

  field :fit, 1, type: Google.Cloud.Migrationcenter.V1.FitDescriptor, deprecated: false

  field :compute_engine_target, 10,
    type: Google.Cloud.Migrationcenter.V1.ComputeEngineMigrationTarget,
    json_name: "computeEngineTarget",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ComputeEngineMigrationTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :shape, 1, type: Google.Cloud.Migrationcenter.V1.ComputeEngineShapeDescriptor
end

defmodule Google.Cloud.Migrationcenter.V1.ComputeEngineShapeDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :memory_mb, 1, type: :int32, json_name: "memoryMb"
  field :physical_core_count, 2, type: :int32, json_name: "physicalCoreCount"
  field :logical_core_count, 3, type: :int32, json_name: "logicalCoreCount"
  field :series, 4, type: :string
  field :machine_type, 5, type: :string, json_name: "machineType"

  field :storage, 6,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ComputeStorageDescriptor
end

defmodule Google.Cloud.Migrationcenter.V1.ComputeStorageDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: Google.Cloud.Migrationcenter.V1.PersistentDiskType, enum: true
  field :size_gb, 2, type: :int32, json_name: "sizeGb"
end

defmodule Google.Cloud.Migrationcenter.V1.FitDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fit_level, 1,
    type: Google.Cloud.Migrationcenter.V1.FitDescriptor.FitLevel,
    json_name: "fitLevel",
    enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.Aggregation.Count do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Migrationcenter.V1.Aggregation.Sum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Migrationcenter.V1.Aggregation.Histogram do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lower_bounds, 1, repeated: true, type: :double, json_name: "lowerBounds"
end

defmodule Google.Cloud.Migrationcenter.V1.Aggregation.Frequency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Migrationcenter.V1.Aggregation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :aggregation_function, 0

  field :field, 1, type: :string
  field :count, 2, type: Google.Cloud.Migrationcenter.V1.Aggregation.Count, oneof: 0
  field :sum, 3, type: Google.Cloud.Migrationcenter.V1.Aggregation.Sum, oneof: 0
  field :histogram, 4, type: Google.Cloud.Migrationcenter.V1.Aggregation.Histogram, oneof: 0
  field :frequency, 5, type: Google.Cloud.Migrationcenter.V1.Aggregation.Frequency, oneof: 0
end

defmodule Google.Cloud.Migrationcenter.V1.AggregationResult.Count do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :int64
end

defmodule Google.Cloud.Migrationcenter.V1.AggregationResult.Sum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :double
end

defmodule Google.Cloud.Migrationcenter.V1.AggregationResult.Histogram.Bucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lower_bound, 1, type: :double, json_name: "lowerBound"
  field :upper_bound, 2, type: :double, json_name: "upperBound"
  field :count, 3, type: :int64
end

defmodule Google.Cloud.Migrationcenter.V1.AggregationResult.Histogram do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :buckets, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.AggregationResult.Histogram.Bucket
end

defmodule Google.Cloud.Migrationcenter.V1.AggregationResult.Frequency.ValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Migrationcenter.V1.AggregationResult.Frequency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.AggregationResult.Frequency.ValuesEntry,
    map: true
end

defmodule Google.Cloud.Migrationcenter.V1.AggregationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :result, 0

  field :field, 1, type: :string
  field :count, 2, type: Google.Cloud.Migrationcenter.V1.AggregationResult.Count, oneof: 0
  field :sum, 3, type: Google.Cloud.Migrationcenter.V1.AggregationResult.Sum, oneof: 0
  field :histogram, 4, type: Google.Cloud.Migrationcenter.V1.AggregationResult.Histogram, oneof: 0
  field :frequency, 5, type: Google.Cloud.Migrationcenter.V1.AggregationResult.Frequency, oneof: 0
end

defmodule Google.Cloud.Migrationcenter.V1.FileValidationReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_name, 1, type: :string, json_name: "fileName"

  field :row_errors, 2,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ImportRowError,
    json_name: "rowErrors"

  field :partial_report, 3, type: :bool, json_name: "partialReport"

  field :file_errors, 4,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ImportError,
    json_name: "fileErrors"
end

defmodule Google.Cloud.Migrationcenter.V1.ValidationReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_validations, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.FileValidationReport,
    json_name: "fileValidations"

  field :job_errors, 2,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ImportError,
    json_name: "jobErrors"
end

defmodule Google.Cloud.Migrationcenter.V1.ExecutionReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :frames_reported, 1, type: :int32, json_name: "framesReported"

  field :execution_errors, 2,
    type: Google.Cloud.Migrationcenter.V1.ValidationReport,
    json_name: "executionErrors"

  field :total_rows_count, 3, type: :int32, json_name: "totalRowsCount", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ImportError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_details, 1, type: :string, json_name: "errorDetails"
  field :severity, 2, type: Google.Cloud.Migrationcenter.V1.ImportError.Severity, enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.ImportRowError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :row_number, 1, type: :int32, json_name: "rowNumber", deprecated: true
  field :vm_name, 2, type: :string, json_name: "vmName"
  field :vm_uuid, 3, type: :string, json_name: "vmUuid"
  field :errors, 4, repeated: true, type: Google.Cloud.Migrationcenter.V1.ImportError
end

defmodule Google.Cloud.Migrationcenter.V1.UploadFileInfo.HeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.UploadFileInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :signed_uri, 1, type: :string, json_name: "signedUri", deprecated: false

  field :headers, 2,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.UploadFileInfo.HeadersEntry,
    map: true,
    deprecated: false

  field :uri_expiration_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "uriExpirationTime",
    deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.AssetList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :asset_ids, 1, repeated: true, type: :string, json_name: "assetIds", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.FrameViolationEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :field, 1, type: :string
  field :violation, 2, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.VirtualMachinePreferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_product, 2,
    type: Google.Cloud.Migrationcenter.V1.ComputeMigrationTargetProduct,
    json_name: "targetProduct",
    enum: true

  field :region_preferences, 3,
    type: Google.Cloud.Migrationcenter.V1.RegionPreferences,
    json_name: "regionPreferences"

  field :commitment_plan, 4,
    type: Google.Cloud.Migrationcenter.V1.CommitmentPlan,
    json_name: "commitmentPlan",
    enum: true

  field :sizing_optimization_strategy, 5,
    type: Google.Cloud.Migrationcenter.V1.SizingOptimizationStrategy,
    json_name: "sizingOptimizationStrategy",
    enum: true

  field :compute_engine_preferences, 6,
    type: Google.Cloud.Migrationcenter.V1.ComputeEnginePreferences,
    json_name: "computeEnginePreferences"

  field :vmware_engine_preferences, 7,
    type: Google.Cloud.Migrationcenter.V1.VmwareEnginePreferences,
    json_name: "vmwareEnginePreferences"

  field :sole_tenancy_preferences, 8,
    type: Google.Cloud.Migrationcenter.V1.SoleTenancyPreferences,
    json_name: "soleTenancyPreferences"
end

defmodule Google.Cloud.Migrationcenter.V1.ComputeEnginePreferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :machine_preferences, 2,
    type: Google.Cloud.Migrationcenter.V1.MachinePreferences,
    json_name: "machinePreferences"

  field :license_type, 3,
    type: Google.Cloud.Migrationcenter.V1.LicenseType,
    json_name: "licenseType",
    enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.MachinePreferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :allowed_machine_series, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.MachineSeries,
    json_name: "allowedMachineSeries"
end

defmodule Google.Cloud.Migrationcenter.V1.MachineSeries do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 1, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.VmwareEnginePreferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cpu_overcommit_ratio, 1, type: :double, json_name: "cpuOvercommitRatio"
  field :memory_overcommit_ratio, 2, type: :double, json_name: "memoryOvercommitRatio"

  field :storage_deduplication_compression_ratio, 3,
    type: :double,
    json_name: "storageDeduplicationCompressionRatio"

  field :commitment_plan, 4,
    type: Google.Cloud.Migrationcenter.V1.VmwareEnginePreferences.CommitmentPlan,
    json_name: "commitmentPlan",
    enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.SoleTenancyPreferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cpu_overcommit_ratio, 1, type: :double, json_name: "cpuOvercommitRatio"

  field :host_maintenance_policy, 2,
    type: Google.Cloud.Migrationcenter.V1.SoleTenancyPreferences.HostMaintenancePolicy,
    json_name: "hostMaintenancePolicy",
    enum: true

  field :commitment_plan, 3,
    type: Google.Cloud.Migrationcenter.V1.SoleTenancyPreferences.CommitmentPlan,
    json_name: "commitmentPlan",
    enum: true

  field :node_types, 4,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.SoleTenantNodeType,
    json_name: "nodeTypes"
end

defmodule Google.Cloud.Migrationcenter.V1.SoleTenantNodeType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :node_name, 1, type: :string, json_name: "nodeName"
end

defmodule Google.Cloud.Migrationcenter.V1.RegionPreferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :preferred_regions, 1, repeated: true, type: :string, json_name: "preferredRegions"
end

defmodule Google.Cloud.Migrationcenter.V1.Settings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :preference_set, 2, type: :string, json_name: "preferenceSet", deprecated: false
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.ChartData.DataPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :label, 1, type: :string
  field :value, 2, type: :double
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.ChartData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_points, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.ChartData.DataPoint,
    json_name: "dataPoints"
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.UtilizationChartData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :used, 1, type: :int64
  field :free, 2, type: :int64
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.HistogramChartData.Bucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lower_bound, 1, type: :int64, json_name: "lowerBound"
  field :upper_bound, 2, type: :int64, json_name: "upperBound"
  field :count, 3, type: :int64
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.HistogramChartData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :buckets, 1,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.HistogramChartData.Bucket
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.AssetAggregateStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :total_memory_bytes, 1, type: :int64, json_name: "totalMemoryBytes"
  field :total_storage_bytes, 2, type: :int64, json_name: "totalStorageBytes"
  field :total_cores, 3, type: :int64, json_name: "totalCores"
  field :total_assets, 4, type: :int64, json_name: "totalAssets"

  field :memory_utilization_chart, 5,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.UtilizationChartData,
    json_name: "memoryUtilizationChart"

  field :storage_utilization_chart, 6,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.UtilizationChartData,
    json_name: "storageUtilizationChart"

  field :operating_system, 7,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.ChartData,
    json_name: "operatingSystem"

  field :core_count_histogram, 8,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.HistogramChartData,
    json_name: "coreCountHistogram"

  field :memory_bytes_histogram, 9,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.HistogramChartData,
    json_name: "memoryBytesHistogram"

  field :storage_bytes_histogram, 10,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.HistogramChartData,
    json_name: "storageBytesHistogram"
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.MachineSeriesAllocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :machine_series, 1,
    type: Google.Cloud.Migrationcenter.V1.MachineSeries,
    json_name: "machineSeries"

  field :allocated_asset_count, 2, type: :int64, json_name: "allocatedAssetCount"
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.ComputeEngineFinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :allocated_regions, 1, repeated: true, type: :string, json_name: "allocatedRegions"
  field :allocated_asset_count, 2, type: :int64, json_name: "allocatedAssetCount"

  field :machine_series_allocations, 3,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.MachineSeriesAllocation,
    json_name: "machineSeriesAllocations"

  field :allocated_disk_types, 4,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.PersistentDiskType,
    json_name: "allocatedDiskTypes",
    enum: true
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.VmwareEngineFinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :allocated_regions, 1, repeated: true, type: :string, json_name: "allocatedRegions"
  field :allocated_asset_count, 2, type: :int64, json_name: "allocatedAssetCount"

  field :node_allocations, 3,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.VmwareNodeAllocation,
    json_name: "nodeAllocations"
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.VmwareNodeAllocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :vmware_node, 1,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.VmwareNode,
    json_name: "vmwareNode"

  field :node_count, 2, type: :int64, json_name: "nodeCount"
  field :allocated_asset_count, 3, type: :int64, json_name: "allocatedAssetCount"
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.VmwareNode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 1, type: :string
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.SoleTenantFinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :allocated_regions, 1, repeated: true, type: :string, json_name: "allocatedRegions"
  field :allocated_asset_count, 2, type: :int64, json_name: "allocatedAssetCount"

  field :node_allocations, 3,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.SoleTenantNodeAllocation,
    json_name: "nodeAllocations"
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.SoleTenantNodeAllocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :node, 1, type: Google.Cloud.Migrationcenter.V1.SoleTenantNodeType
  field :node_count, 2, type: :int64, json_name: "nodeCount"
  field :allocated_asset_count, 3, type: :int64, json_name: "allocatedAssetCount"
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.GroupPreferenceSetFinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string

  field :machine_preferences, 3,
    type: Google.Cloud.Migrationcenter.V1.VirtualMachinePreferences,
    json_name: "machinePreferences"

  field :monthly_cost_total, 4, type: Google.Type.Money, json_name: "monthlyCostTotal"
  field :monthly_cost_compute, 5, type: Google.Type.Money, json_name: "monthlyCostCompute"
  field :monthly_cost_os_license, 6, type: Google.Type.Money, json_name: "monthlyCostOsLicense"

  field :monthly_cost_network_egress, 7,
    type: Google.Type.Money,
    json_name: "monthlyCostNetworkEgress"

  field :monthly_cost_storage, 8, type: Google.Type.Money, json_name: "monthlyCostStorage"
  field :monthly_cost_other, 9, type: Google.Type.Money, json_name: "monthlyCostOther"

  field :compute_engine_finding, 10,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.ComputeEngineFinding,
    json_name: "computeEngineFinding"

  field :vmware_engine_finding, 11,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.VmwareEngineFinding,
    json_name: "vmwareEngineFinding"

  field :sole_tenant_finding, 12,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.SoleTenantFinding,
    json_name: "soleTenantFinding"
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary.GroupFinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string

  field :asset_aggregate_stats, 3,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.AssetAggregateStats,
    json_name: "assetAggregateStats"

  field :overlapping_asset_count, 4,
    type: :int64,
    json_name: "overlappingAssetCount",
    deprecated: true

  field :preference_set_findings, 5,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.GroupPreferenceSetFinding,
    json_name: "preferenceSetFindings"
end

defmodule Google.Cloud.Migrationcenter.V1.ReportSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :all_assets_stats, 1,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.AssetAggregateStats,
    json_name: "allAssetsStats"

  field :group_findings, 2,
    repeated: true,
    type: Google.Cloud.Migrationcenter.V1.ReportSummary.GroupFinding,
    json_name: "groupFindings"
end

defmodule Google.Cloud.Migrationcenter.V1.MigrationCenter.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.migrationcenter.v1.MigrationCenter",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListAssets,
      Google.Cloud.Migrationcenter.V1.ListAssetsRequest,
      Google.Cloud.Migrationcenter.V1.ListAssetsResponse

  rpc :GetAsset,
      Google.Cloud.Migrationcenter.V1.GetAssetRequest,
      Google.Cloud.Migrationcenter.V1.Asset

  rpc :UpdateAsset,
      Google.Cloud.Migrationcenter.V1.UpdateAssetRequest,
      Google.Cloud.Migrationcenter.V1.Asset

  rpc :BatchUpdateAssets,
      Google.Cloud.Migrationcenter.V1.BatchUpdateAssetsRequest,
      Google.Cloud.Migrationcenter.V1.BatchUpdateAssetsResponse

  rpc :DeleteAsset, Google.Cloud.Migrationcenter.V1.DeleteAssetRequest, Google.Protobuf.Empty

  rpc :BatchDeleteAssets,
      Google.Cloud.Migrationcenter.V1.BatchDeleteAssetsRequest,
      Google.Protobuf.Empty

  rpc :ReportAssetFrames,
      Google.Cloud.Migrationcenter.V1.ReportAssetFramesRequest,
      Google.Cloud.Migrationcenter.V1.ReportAssetFramesResponse

  rpc :AggregateAssetsValues,
      Google.Cloud.Migrationcenter.V1.AggregateAssetsValuesRequest,
      Google.Cloud.Migrationcenter.V1.AggregateAssetsValuesResponse

  rpc :CreateImportJob,
      Google.Cloud.Migrationcenter.V1.CreateImportJobRequest,
      Google.Longrunning.Operation

  rpc :ListImportJobs,
      Google.Cloud.Migrationcenter.V1.ListImportJobsRequest,
      Google.Cloud.Migrationcenter.V1.ListImportJobsResponse

  rpc :GetImportJob,
      Google.Cloud.Migrationcenter.V1.GetImportJobRequest,
      Google.Cloud.Migrationcenter.V1.ImportJob

  rpc :DeleteImportJob,
      Google.Cloud.Migrationcenter.V1.DeleteImportJobRequest,
      Google.Longrunning.Operation

  rpc :UpdateImportJob,
      Google.Cloud.Migrationcenter.V1.UpdateImportJobRequest,
      Google.Longrunning.Operation

  rpc :ValidateImportJob,
      Google.Cloud.Migrationcenter.V1.ValidateImportJobRequest,
      Google.Longrunning.Operation

  rpc :RunImportJob,
      Google.Cloud.Migrationcenter.V1.RunImportJobRequest,
      Google.Longrunning.Operation

  rpc :GetImportDataFile,
      Google.Cloud.Migrationcenter.V1.GetImportDataFileRequest,
      Google.Cloud.Migrationcenter.V1.ImportDataFile

  rpc :ListImportDataFiles,
      Google.Cloud.Migrationcenter.V1.ListImportDataFilesRequest,
      Google.Cloud.Migrationcenter.V1.ListImportDataFilesResponse

  rpc :CreateImportDataFile,
      Google.Cloud.Migrationcenter.V1.CreateImportDataFileRequest,
      Google.Longrunning.Operation

  rpc :DeleteImportDataFile,
      Google.Cloud.Migrationcenter.V1.DeleteImportDataFileRequest,
      Google.Longrunning.Operation

  rpc :ListGroups,
      Google.Cloud.Migrationcenter.V1.ListGroupsRequest,
      Google.Cloud.Migrationcenter.V1.ListGroupsResponse

  rpc :GetGroup,
      Google.Cloud.Migrationcenter.V1.GetGroupRequest,
      Google.Cloud.Migrationcenter.V1.Group

  rpc :CreateGroup,
      Google.Cloud.Migrationcenter.V1.CreateGroupRequest,
      Google.Longrunning.Operation

  rpc :UpdateGroup,
      Google.Cloud.Migrationcenter.V1.UpdateGroupRequest,
      Google.Longrunning.Operation

  rpc :DeleteGroup,
      Google.Cloud.Migrationcenter.V1.DeleteGroupRequest,
      Google.Longrunning.Operation

  rpc :AddAssetsToGroup,
      Google.Cloud.Migrationcenter.V1.AddAssetsToGroupRequest,
      Google.Longrunning.Operation

  rpc :RemoveAssetsFromGroup,
      Google.Cloud.Migrationcenter.V1.RemoveAssetsFromGroupRequest,
      Google.Longrunning.Operation

  rpc :ListErrorFrames,
      Google.Cloud.Migrationcenter.V1.ListErrorFramesRequest,
      Google.Cloud.Migrationcenter.V1.ListErrorFramesResponse

  rpc :GetErrorFrame,
      Google.Cloud.Migrationcenter.V1.GetErrorFrameRequest,
      Google.Cloud.Migrationcenter.V1.ErrorFrame

  rpc :ListSources,
      Google.Cloud.Migrationcenter.V1.ListSourcesRequest,
      Google.Cloud.Migrationcenter.V1.ListSourcesResponse

  rpc :GetSource,
      Google.Cloud.Migrationcenter.V1.GetSourceRequest,
      Google.Cloud.Migrationcenter.V1.Source

  rpc :CreateSource,
      Google.Cloud.Migrationcenter.V1.CreateSourceRequest,
      Google.Longrunning.Operation

  rpc :UpdateSource,
      Google.Cloud.Migrationcenter.V1.UpdateSourceRequest,
      Google.Longrunning.Operation

  rpc :DeleteSource,
      Google.Cloud.Migrationcenter.V1.DeleteSourceRequest,
      Google.Longrunning.Operation

  rpc :ListPreferenceSets,
      Google.Cloud.Migrationcenter.V1.ListPreferenceSetsRequest,
      Google.Cloud.Migrationcenter.V1.ListPreferenceSetsResponse

  rpc :GetPreferenceSet,
      Google.Cloud.Migrationcenter.V1.GetPreferenceSetRequest,
      Google.Cloud.Migrationcenter.V1.PreferenceSet

  rpc :CreatePreferenceSet,
      Google.Cloud.Migrationcenter.V1.CreatePreferenceSetRequest,
      Google.Longrunning.Operation

  rpc :UpdatePreferenceSet,
      Google.Cloud.Migrationcenter.V1.UpdatePreferenceSetRequest,
      Google.Longrunning.Operation

  rpc :DeletePreferenceSet,
      Google.Cloud.Migrationcenter.V1.DeletePreferenceSetRequest,
      Google.Longrunning.Operation

  rpc :GetSettings,
      Google.Cloud.Migrationcenter.V1.GetSettingsRequest,
      Google.Cloud.Migrationcenter.V1.Settings

  rpc :UpdateSettings,
      Google.Cloud.Migrationcenter.V1.UpdateSettingsRequest,
      Google.Longrunning.Operation

  rpc :CreateReportConfig,
      Google.Cloud.Migrationcenter.V1.CreateReportConfigRequest,
      Google.Longrunning.Operation

  rpc :GetReportConfig,
      Google.Cloud.Migrationcenter.V1.GetReportConfigRequest,
      Google.Cloud.Migrationcenter.V1.ReportConfig

  rpc :ListReportConfigs,
      Google.Cloud.Migrationcenter.V1.ListReportConfigsRequest,
      Google.Cloud.Migrationcenter.V1.ListReportConfigsResponse

  rpc :DeleteReportConfig,
      Google.Cloud.Migrationcenter.V1.DeleteReportConfigRequest,
      Google.Longrunning.Operation

  rpc :CreateReport,
      Google.Cloud.Migrationcenter.V1.CreateReportRequest,
      Google.Longrunning.Operation

  rpc :GetReport,
      Google.Cloud.Migrationcenter.V1.GetReportRequest,
      Google.Cloud.Migrationcenter.V1.Report

  rpc :ListReports,
      Google.Cloud.Migrationcenter.V1.ListReportsRequest,
      Google.Cloud.Migrationcenter.V1.ListReportsResponse

  rpc :DeleteReport,
      Google.Cloud.Migrationcenter.V1.DeleteReportRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Migrationcenter.V1.MigrationCenter.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Migrationcenter.V1.MigrationCenter.Service
end
