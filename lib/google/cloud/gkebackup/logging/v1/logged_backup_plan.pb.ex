defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.RetentionPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backup_delete_lock_days, 1, type: :int32, json_name: "backupDeleteLockDays"
  field :backup_retain_days, 2, type: :int32, json_name: "backupRetainDays"
  field :locked, 3, type: :bool
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.Schedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cron_schedule, 1, type: :string, json_name: "cronSchedule"
  field :paused, 2, type: :bool
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.BackupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :backup_scope, 0

  field :all_namespaces, 1, type: :bool, json_name: "allNamespaces", oneof: 0

  field :selected_namespaces, 2,
    type: Google.Cloud.Gkebackup.Logging.V1.Namespaces,
    json_name: "selectedNamespaces",
    oneof: 0

  field :selected_applications, 3,
    type: Google.Cloud.Gkebackup.Logging.V1.NamespacedNames,
    json_name: "selectedApplications",
    oneof: 0

  field :include_volume_data, 4, type: :bool, json_name: "includeVolumeData"
  field :include_secrets, 5, type: :bool, json_name: "includeSecrets"

  field :encryption_key, 6,
    type: Google.Cloud.Gkebackup.Logging.V1.EncryptionKey,
    json_name: "encryptionKey"
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :description, 1, type: :string
  field :cluster, 2, type: :string

  field :retention_policy, 3,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.RetentionPolicy,
    json_name: "retentionPolicy"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.LabelsEntry,
    map: true

  field :backup_schedule, 5,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.Schedule,
    json_name: "backupSchedule"

  field :deactivated, 6, type: :bool

  field :backup_config, 7,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.BackupConfig,
    json_name: "backupConfig"

  field :rpo_risk_level, 8, type: :int32, json_name: "rpoRiskLevel"
end