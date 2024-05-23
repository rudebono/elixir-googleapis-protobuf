defmodule Google.Cloud.Gkebackup.V1.BackupPlan.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CLUSTER_PENDING, 1
  field :PROVISIONING, 2
  field :READY, 3
  field :FAILED, 4
  field :DEACTIVATED, 5
  field :DELETING, 6
end

defmodule Google.Cloud.Gkebackup.V1.BackupPlan.RetentionPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup_delete_lock_days, 1,
    type: :int32,
    json_name: "backupDeleteLockDays",
    deprecated: false

  field :backup_retain_days, 2, type: :int32, json_name: "backupRetainDays", deprecated: false
  field :locked, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.BackupPlan.Schedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cron_schedule, 1, type: :string, json_name: "cronSchedule", deprecated: false
  field :paused, 2, type: :bool, deprecated: false

  field :rpo_config, 3,
    type: Google.Cloud.Gkebackup.V1.RpoConfig,
    json_name: "rpoConfig",
    deprecated: false

  field :next_scheduled_backup_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "nextScheduledBackupTime",
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.BackupPlan.BackupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :backup_scope, 0

  field :all_namespaces, 1, type: :bool, json_name: "allNamespaces", oneof: 0

  field :selected_namespaces, 2,
    type: Google.Cloud.Gkebackup.V1.Namespaces,
    json_name: "selectedNamespaces",
    oneof: 0

  field :selected_applications, 3,
    type: Google.Cloud.Gkebackup.V1.NamespacedNames,
    json_name: "selectedApplications",
    oneof: 0

  field :include_volume_data, 4, type: :bool, json_name: "includeVolumeData", deprecated: false
  field :include_secrets, 5, type: :bool, json_name: "includeSecrets", deprecated: false

  field :encryption_key, 6,
    type: Google.Cloud.Gkebackup.V1.EncryptionKey,
    json_name: "encryptionKey",
    deprecated: false

  field :permissive_mode, 7, type: :bool, json_name: "permissiveMode", deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.BackupPlan.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.V1.BackupPlan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :cluster, 6, type: :string, deprecated: false

  field :retention_policy, 7,
    type: Google.Cloud.Gkebackup.V1.BackupPlan.RetentionPolicy,
    json_name: "retentionPolicy",
    deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.BackupPlan.LabelsEntry,
    map: true,
    deprecated: false

  field :backup_schedule, 9,
    type: Google.Cloud.Gkebackup.V1.BackupPlan.Schedule,
    json_name: "backupSchedule",
    deprecated: false

  field :etag, 10, type: :string, deprecated: false
  field :deactivated, 11, type: :bool, deprecated: false

  field :backup_config, 12,
    type: Google.Cloud.Gkebackup.V1.BackupPlan.BackupConfig,
    json_name: "backupConfig",
    deprecated: false

  field :protected_pod_count, 13, type: :int32, json_name: "protectedPodCount", deprecated: false

  field :state, 14,
    type: Google.Cloud.Gkebackup.V1.BackupPlan.State,
    enum: true,
    deprecated: false

  field :state_reason, 15, type: :string, json_name: "stateReason", deprecated: false
  field :rpo_risk_level, 16, type: :int32, json_name: "rpoRiskLevel", deprecated: false
  field :rpo_risk_reason, 17, type: :string, json_name: "rpoRiskReason", deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.RpoConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_rpo_minutes, 1, type: :int32, json_name: "targetRpoMinutes", deprecated: false

  field :exclusion_windows, 2,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.ExclusionWindow,
    json_name: "exclusionWindows",
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.ExclusionWindow.DayOfWeekList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :days_of_week, 1,
    repeated: true,
    type: Google.Type.DayOfWeek,
    json_name: "daysOfWeek",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.ExclusionWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :recurrence, 0

  field :start_time, 1, type: Google.Type.TimeOfDay, json_name: "startTime", deprecated: false
  field :duration, 2, type: Google.Protobuf.Duration, deprecated: false

  field :single_occurrence_date, 3,
    type: Google.Type.Date,
    json_name: "singleOccurrenceDate",
    oneof: 0

  field :daily, 4, type: :bool, oneof: 0

  field :days_of_week, 5,
    type: Google.Cloud.Gkebackup.V1.ExclusionWindow.DayOfWeekList,
    json_name: "daysOfWeek",
    oneof: 0
end