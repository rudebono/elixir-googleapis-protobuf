defmodule Google.Cloud.Backupdr.Logging.V1.BDRBackupRestoreJobLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
end