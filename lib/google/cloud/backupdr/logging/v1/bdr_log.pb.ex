defmodule Google.Cloud.Backupdr.Logging.V1.BDRBackupRestoreJobLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :job_id, 1, proto3_optional: true, type: :string, json_name: "jobId"
  field :job_category, 2, proto3_optional: true, type: :string, json_name: "jobCategory"
  field :job_status, 3, proto3_optional: true, type: :string, json_name: "jobStatus"

  field :source_resource_name, 4,
    proto3_optional: true,
    type: :string,
    json_name: "sourceResourceName"

  field :source_resource_id, 5,
    proto3_optional: true,
    type: :string,
    json_name: "sourceResourceId"

  field :restore_resource_name, 6,
    proto3_optional: true,
    type: :string,
    json_name: "restoreResourceName"

  field :backup_name, 7, proto3_optional: true, type: :string, json_name: "backupName"
  field :resource_type, 8, proto3_optional: true, type: :string, json_name: "resourceType"

  field :start_time, 9,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime"

  field :end_time, 10,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "endTime"

  field :backup_plan_name, 11, proto3_optional: true, type: :string, json_name: "backupPlanName"
  field :backup_rule, 12, proto3_optional: true, type: :string, json_name: "backupRule"
  field :backup_vault_name, 13, proto3_optional: true, type: :string, json_name: "backupVaultName"

  field :incremental_backup_size_gib, 14,
    proto3_optional: true,
    type: :double,
    json_name: "incrementalBackupSizeGib"

  field :error_code, 15, proto3_optional: true, type: :int32, json_name: "errorCode"
  field :error_type, 16, proto3_optional: true, type: :string, json_name: "errorType"
  field :error_message, 17, proto3_optional: true, type: :string, json_name: "errorMessage"

  field :backup_consistency_time, 18,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "backupConsistencyTime"

  field :source_resource_location, 19,
    proto3_optional: true,
    type: :string,
    json_name: "sourceResourceLocation"

  field :restore_resource_location, 20,
    proto3_optional: true,
    type: :string,
    json_name: "restoreResourceLocation"
end

defmodule Google.Cloud.Backupdr.Logging.V1.BDRProtectedResourceLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_resource_name, 1,
    proto3_optional: true,
    type: :string,
    json_name: "sourceResourceName"

  field :source_resource_id, 2,
    proto3_optional: true,
    type: :string,
    json_name: "sourceResourceId"

  field :resource_type, 3, proto3_optional: true, type: :string, json_name: "resourceType"

  field :source_resource_data_size_gib, 4,
    proto3_optional: true,
    type: :double,
    json_name: "sourceResourceDataSizeGib"

  field :current_backup_plan_name, 5,
    proto3_optional: true,
    type: :string,
    json_name: "currentBackupPlanName"

  field :current_backup_rule_details, 6,
    repeated: true,
    type: Google.Cloud.Backupdr.Logging.V1.BackupRuleDetail,
    json_name: "currentBackupRuleDetails"

  field :last_protected_on, 7,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "lastProtectedOn"

  field :current_backup_vault_name, 8,
    proto3_optional: true,
    type: :string,
    json_name: "currentBackupVaultName"

  field :source_resource_location, 9,
    proto3_optional: true,
    type: :string,
    json_name: "sourceResourceLocation"
end

defmodule Google.Cloud.Backupdr.Logging.V1.BackupRuleDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rule_name, 1, proto3_optional: true, type: :string, json_name: "ruleName"
  field :retention_days, 2, proto3_optional: true, type: :int32, json_name: "retentionDays"
  field :recurrence, 3, proto3_optional: true, type: :string

  field :recurrence_schedule, 4,
    proto3_optional: true,
    type: :string,
    json_name: "recurrenceSchedule"

  field :backup_window, 5, proto3_optional: true, type: :string, json_name: "backupWindow"

  field :backup_window_timezone, 6,
    proto3_optional: true,
    type: :string,
    json_name: "backupWindowTimezone"
end

defmodule Google.Cloud.Backupdr.Logging.V1.BDRBackupVaultDetailsLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backup_vault_name, 1, proto3_optional: true, type: :string, json_name: "backupVaultName"

  field :source_resource_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "sourceResourceName"

  field :resource_type, 3, proto3_optional: true, type: :string, json_name: "resourceType"

  field :current_backup_plan_name, 4,
    proto3_optional: true,
    type: :string,
    json_name: "currentBackupPlanName"

  field :first_available_restore_point, 5,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "firstAvailableRestorePoint"

  field :last_available_restore_point, 6,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAvailableRestorePoint"

  field :stored_bytes_gib, 7, proto3_optional: true, type: :double, json_name: "storedBytesGib"

  field :minimum_enforced_retention_days, 8,
    proto3_optional: true,
    type: :int32,
    json_name: "minimumEnforcedRetentionDays"

  field :source_resource_location, 9,
    proto3_optional: true,
    type: :string,
    json_name: "sourceResourceLocation"
end
