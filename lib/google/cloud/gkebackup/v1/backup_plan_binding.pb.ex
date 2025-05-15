defmodule Google.Cloud.Gkebackup.V1.BackupPlanBinding.BackupPlanDetails.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CLUSTER_PENDING, 1
  field :PROVISIONING, 2
  field :READY, 3
  field :FAILED, 4
  field :DEACTIVATED, 5
  field :DELETING, 6
end

defmodule Google.Cloud.Gkebackup.V1.BackupPlanBinding.BackupPlanDetails.BackupConfigDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :backup_scope, 0

  field :all_namespaces, 1, type: :bool, json_name: "allNamespaces", oneof: 0, deprecated: false

  field :selected_namespaces, 2,
    type: Google.Cloud.Gkebackup.V1.Namespaces,
    json_name: "selectedNamespaces",
    oneof: 0,
    deprecated: false

  field :selected_applications, 3,
    type: Google.Cloud.Gkebackup.V1.NamespacedNames,
    json_name: "selectedApplications",
    oneof: 0,
    deprecated: false

  field :include_volume_data, 5, type: :bool, json_name: "includeVolumeData", deprecated: false
  field :include_secrets, 6, type: :bool, json_name: "includeSecrets", deprecated: false

  field :encryption_key, 7,
    type: Google.Cloud.Gkebackup.V1.EncryptionKey,
    json_name: "encryptionKey",
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.BackupPlanBinding.BackupPlanDetails.RetentionPolicyDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backup_delete_lock_days, 1,
    type: :int32,
    json_name: "backupDeleteLockDays",
    deprecated: false

  field :backup_retain_days, 2, type: :int32, json_name: "backupRetainDays", deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.BackupPlanBinding.BackupPlanDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :protected_pod_count, 1, type: :int32, json_name: "protectedPodCount", deprecated: false

  field :state, 2,
    type: Google.Cloud.Gkebackup.V1.BackupPlanBinding.BackupPlanDetails.State,
    enum: true,
    deprecated: false

  field :last_successful_backup_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "lastSuccessfulBackupTime",
    deprecated: false

  field :next_scheduled_backup_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "nextScheduledBackupTime",
    deprecated: false

  field :rpo_risk_level, 5, type: :int32, json_name: "rpoRiskLevel", deprecated: false

  field :last_successful_backup, 6,
    type: :string,
    json_name: "lastSuccessfulBackup",
    deprecated: false

  field :backup_config_details, 7,
    type: Google.Cloud.Gkebackup.V1.BackupPlanBinding.BackupPlanDetails.BackupConfigDetails,
    json_name: "backupConfigDetails",
    deprecated: false

  field :retention_policy_details, 8,
    type: Google.Cloud.Gkebackup.V1.BackupPlanBinding.BackupPlanDetails.RetentionPolicyDetails,
    json_name: "retentionPolicyDetails",
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.BackupPlanBinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  field :backup_plan, 5, type: :string, json_name: "backupPlan", deprecated: false
  field :cluster, 6, type: :string, deprecated: false

  field :backup_plan_details, 7,
    type: Google.Cloud.Gkebackup.V1.BackupPlanBinding.BackupPlanDetails,
    json_name: "backupPlanDetails",
    deprecated: false

  field :etag, 8, type: :string, deprecated: false
end
