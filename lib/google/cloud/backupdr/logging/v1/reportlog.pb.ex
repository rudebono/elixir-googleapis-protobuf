defmodule Google.Cloud.Backupdr.Logging.V1.BackupRecoveryJobReportLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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