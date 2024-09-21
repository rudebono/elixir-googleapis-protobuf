defmodule Google.Cloud.Backupdr.Logging.V1.BackupRecoveryJobReportLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :job_name, 1, type: :string, json_name: "jobName"
  field :job_category, 2, type: :string, json_name: "jobCategory"
  field :job_type, 3, type: :string, json_name: "jobType"
  field :log_backup, 4, type: :string, json_name: "logBackup"
  field :job_status, 5, type: :string, json_name: "jobStatus"
  field :resource_name, 6, type: :string, json_name: "resourceName"
  field :resource_type, 7, type: :string, json_name: "resourceType"
  field :error_code, 8, type: :int32, json_name: "errorCode"
  field :error_message, 9, type: :string, json_name: "errorMessage"
  field :job_initiation_failure_reason, 10, type: :string, json_name: "jobInitiationFailureReason"
  field :job_start_time, 11, type: :string, json_name: "jobStartTime"
  field :job_end_time, 12, type: :string, json_name: "jobEndTime"
  field :job_queued_time, 13, type: :string, json_name: "jobQueuedTime"
  field :job_duration_in_hours, 14, type: :double, json_name: "jobDurationInHours"
  field :hostname, 15, type: :string
  field :appliance_name, 16, type: :string, json_name: "applianceName"
  field :backup_rule_policy_name, 17, type: :string, json_name: "backupRulePolicyName"
  field :backup_plan_policy_template, 18, type: :string, json_name: "backupPlanPolicyTemplate"
  field :backup_type, 19, type: :string, json_name: "backupType"
  field :recovery_point, 20, type: :string, json_name: "recoveryPoint"
  field :backup_consistency, 21, type: :string, json_name: "backupConsistency"
  field :target_host_name, 22, type: :string, json_name: "targetHostName"
  field :target_appliance_name, 23, type: :string, json_name: "targetApplianceName"
  field :target_pool_name, 24, type: :string, json_name: "targetPoolName"
  field :resource_data_size_in_gib, 25, type: :double, json_name: "resourceDataSizeInGib"
  field :data_copied_in_gib, 26, type: :double, json_name: "dataCopiedInGib"

  field :onvault_pool_storage_consumed_in_gib, 27,
    type: :double,
    json_name: "onvaultPoolStorageConsumedInGib"

  field :pre_compress_in_gib, 28, type: :double, json_name: "preCompressInGib"
  field :compression_ratio, 29, type: :double, json_name: "compressionRatio"
  field :data_change_rate, 30, type: :double, json_name: "dataChangeRate"
  field :snapshot_disk_size_in_gib, 31, type: :double, json_name: "snapshotDiskSizeInGib"
  field :data_written_in_gib, 32, type: :double, json_name: "dataWrittenInGib"
  field :data_sent_in_gib, 33, type: :double, json_name: "dataSentInGib"
  field :job_id, 34, type: :string, json_name: "jobId"
  field :host_id, 35, type: :string, json_name: "hostId"
  field :backup_rule_policy_id, 36, type: :string, json_name: "backupRulePolicyId"
  field :resource_id, 37, type: :string, json_name: "resourceId"
  field :target_pool_id, 38, type: :string, json_name: "targetPoolId"
  field :target_host_id, 39, type: :string, json_name: "targetHostId"
  field :target_appliance_id, 40, type: :string, json_name: "targetApplianceId"
end

defmodule Google.Cloud.Backupdr.Logging.V1.UnprotectedResourceReportLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :host_name, 1, type: :string, json_name: "hostName"
  field :resource_name, 2, type: :string, json_name: "resourceName"
  field :resource_type, 3, type: :string, json_name: "resourceType"
  field :instance_name, 4, type: :string, json_name: "instanceName"
  field :discovered_on, 5, type: :string, json_name: "discoveredOn"
  field :discovered_by, 6, type: :string, json_name: "discoveredBy"
  field :appliance_id, 7, type: :string, json_name: "applianceId"
  field :resource_id, 8, type: :string, json_name: "resourceId"
  field :host_id, 9, type: :string, json_name: "hostId"
end

defmodule Google.Cloud.Backupdr.Logging.V1.DailyScheduleComplianceReportLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :resource_type, 2, type: :string, json_name: "resourceType"
  field :backup_rule_policy_name, 3, type: :string, json_name: "backupRulePolicyName"
  field :backup_plan_policy_template, 4, type: :string, json_name: "backupPlanPolicyTemplate"
  field :host_name, 5, type: :string, json_name: "hostName"
  field :appliance_name, 6, type: :string, json_name: "applianceName"
  field :date, 7, type: :string
  field :backup_window_start_time, 8, type: :string, json_name: "backupWindowStartTime"
  field :job_type, 9, type: :string, json_name: "jobType"
  field :status, 10, type: :string
  field :comment, 11, type: :string
  field :resource_id, 12, type: :string, json_name: "resourceId"
  field :host_id, 13, type: :string, json_name: "hostId"

  field :backup_plan_policy_template_id, 14,
    type: :string,
    json_name: "backupPlanPolicyTemplateId"

  field :backup_rule_policy_id, 15, type: :string, json_name: "backupRulePolicyId"
  field :appliance_id, 16, type: :string, json_name: "applianceId"
end

defmodule Google.Cloud.Backupdr.Logging.V1.BackupStorageUtilizationReportLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :appliance_name, 1, type: :string, json_name: "applianceName"
  field :storage_type, 2, type: :string, json_name: "storageType"
  field :pool_name, 3, type: :string, json_name: "poolName"
  field :total_capacity_in_gib, 4, type: :double, json_name: "totalCapacityInGib"
  field :used_capacity_in_gib, 5, type: :double, json_name: "usedCapacityInGib"
  field :utilization_percentage, 6, type: :double, json_name: "utilizationPercentage"
  field :appliance_id, 7, type: :string, json_name: "applianceId"
end

defmodule Google.Cloud.Backupdr.Logging.V1.ProtectedResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :resource_type, 2, type: :string, json_name: "resourceType"
  field :resource_id, 3, type: :string, json_name: "resourceId"
  field :backup_inclusion_or_exclusion, 4, type: :string, json_name: "backupInclusionOrExclusion"
  field :host_id, 5, type: :string, json_name: "hostId"
  field :host_name, 6, type: :string, json_name: "hostName"
  field :backup_plan_policy_template_id, 7, type: :string, json_name: "backupPlanPolicyTemplateId"
  field :backup_plan_policy_template, 8, type: :string, json_name: "backupPlanPolicyTemplate"
  field :sla_id, 9, type: :string, json_name: "slaId"
  field :backup_plan_restrictions, 10, type: :string, json_name: "backupPlanRestrictions"
  field :protected_on, 11, type: :string, json_name: "protectedOn"
  field :policy_overrides, 12, type: :string, json_name: "policyOverrides"
  field :source_appliance, 13, type: :string, json_name: "sourceAppliance"
  field :source_appliance_id, 14, type: :string, json_name: "sourceApplianceId"
  field :protected_data_in_gib, 15, type: :double, json_name: "protectedDataInGib"
  field :onvault_in_gib, 16, type: :double, json_name: "onvaultInGib"
  field :appliance_name, 17, type: :string, json_name: "applianceName"
  field :appliance_id, 18, type: :string, json_name: "applianceId"
  field :remote_appliance, 19, type: :string, json_name: "remoteAppliance"
  field :remote_appliance_id, 20, type: :string, json_name: "remoteApplianceId"
  field :recovery_point, 21, type: :string, json_name: "recoveryPoint"
end

defmodule Google.Cloud.Backupdr.Logging.V1.MountedImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_resource_name, 1, type: :string, json_name: "sourceResourceName"
  field :source_resource_id, 2, type: :string, json_name: "sourceResourceId"
  field :appliance_name, 3, type: :string, json_name: "applianceName"
  field :appliance_id, 4, type: :string, json_name: "applianceId"
  field :mounted_image_name, 5, type: :string, json_name: "mountedImageName"
  field :source_image_name, 6, type: :string, json_name: "sourceImageName"
  field :job_type, 7, type: :string, json_name: "jobType"
  field :recovery_point_date, 8, type: :string, json_name: "recoveryPointDate"
  field :last_mount_date, 9, type: :string, json_name: "lastMountDate"
  field :resource_type, 10, type: :string, json_name: "resourceType"
  field :source_host_name, 11, type: :string, json_name: "sourceHostName"
  field :source_host_id, 12, type: :string, json_name: "sourceHostId"
  field :mounted_host_name, 13, type: :string, json_name: "mountedHostName"
  field :mounted_host_id, 14, type: :string, json_name: "mountedHostId"
  field :mounted_resource_name, 15, type: :string, json_name: "mountedResourceName"
  field :resource_virtual_size, 16, type: :string, json_name: "resourceVirtualSize"
  field :storage_consumed, 17, type: :string, json_name: "storageConsumed"
  field :mounted_resource_label, 18, type: :string, json_name: "mountedResourceLabel"
  field :restorable_object, 19, type: :string, json_name: "restorableObject"
  field :mount_duration, 20, type: :string, json_name: "mountDuration"
  field :user_name, 21, type: :string, json_name: "userName"
  field :read_mode, 22, type: :string, json_name: "readMode"
  field :resource_size, 23, type: :string, json_name: "resourceSize"
  field :image_expiration_date, 24, type: :string, json_name: "imageExpirationDate"
end