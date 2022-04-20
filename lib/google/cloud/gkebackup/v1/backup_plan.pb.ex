defmodule Google.Cloud.Gkebackup.V1.BackupPlan.RetentionPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup_delete_lock_days: integer,
          backup_retain_days: integer,
          locked: boolean
        }

  defstruct backup_delete_lock_days: 0,
            backup_retain_days: 0,
            locked: false

  field :backup_delete_lock_days, 1, type: :int32, json_name: "backupDeleteLockDays"
  field :backup_retain_days, 2, type: :int32, json_name: "backupRetainDays"
  field :locked, 3, type: :bool
end
defmodule Google.Cloud.Gkebackup.V1.BackupPlan.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cron_schedule: String.t(),
          paused: boolean
        }

  defstruct cron_schedule: "",
            paused: false

  field :cron_schedule, 1, type: :string, json_name: "cronSchedule"
  field :paused, 2, type: :bool
end
defmodule Google.Cloud.Gkebackup.V1.BackupPlan.BackupConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup_scope:
            {:all_namespaces, boolean}
            | {:selected_namespaces, Google.Cloud.Gkebackup.V1.Namespaces.t() | nil}
            | {:selected_applications, Google.Cloud.Gkebackup.V1.NamespacedNames.t() | nil},
          include_volume_data: boolean,
          include_secrets: boolean,
          encryption_key: Google.Cloud.Gkebackup.V1.EncryptionKey.t() | nil
        }

  defstruct backup_scope: nil,
            include_volume_data: false,
            include_secrets: false,
            encryption_key: nil

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

  field :include_volume_data, 4, type: :bool, json_name: "includeVolumeData"
  field :include_secrets, 5, type: :bool, json_name: "includeSecrets"

  field :encryption_key, 6,
    type: Google.Cloud.Gkebackup.V1.EncryptionKey,
    json_name: "encryptionKey"
end
defmodule Google.Cloud.Gkebackup.V1.BackupPlan.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Gkebackup.V1.BackupPlan do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          description: String.t(),
          cluster: String.t(),
          retention_policy: Google.Cloud.Gkebackup.V1.BackupPlan.RetentionPolicy.t() | nil,
          labels: %{String.t() => String.t()},
          backup_schedule: Google.Cloud.Gkebackup.V1.BackupPlan.Schedule.t() | nil,
          etag: String.t(),
          deactivated: boolean,
          backup_config: Google.Cloud.Gkebackup.V1.BackupPlan.BackupConfig.t() | nil,
          protected_pod_count: integer
        }

  defstruct name: "",
            uid: "",
            create_time: nil,
            update_time: nil,
            description: "",
            cluster: "",
            retention_policy: nil,
            labels: %{},
            backup_schedule: nil,
            etag: "",
            deactivated: false,
            backup_config: nil,
            protected_pod_count: 0

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

  field :description, 5, type: :string
  field :cluster, 6, type: :string, deprecated: false

  field :retention_policy, 7,
    type: Google.Cloud.Gkebackup.V1.BackupPlan.RetentionPolicy,
    json_name: "retentionPolicy"

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.BackupPlan.LabelsEntry,
    map: true

  field :backup_schedule, 9,
    type: Google.Cloud.Gkebackup.V1.BackupPlan.Schedule,
    json_name: "backupSchedule"

  field :etag, 10, type: :string, deprecated: false
  field :deactivated, 11, type: :bool

  field :backup_config, 12,
    type: Google.Cloud.Gkebackup.V1.BackupPlan.BackupConfig,
    json_name: "backupConfig"

  field :protected_pod_count, 13, type: :int32, json_name: "protectedPodCount", deprecated: false
end
