defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.RetentionPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup_delete_lock_days: integer,
          backup_retain_days: integer,
          locked: boolean
        }

  defstruct [:backup_delete_lock_days, :backup_retain_days, :locked]

  field :backup_delete_lock_days, 1, type: :int32, json_name: "backupDeleteLockDays"
  field :backup_retain_days, 2, type: :int32, json_name: "backupRetainDays"
  field :locked, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cron_schedule: String.t(),
          paused: boolean
        }

  defstruct [:cron_schedule, :paused]

  field :cron_schedule, 1, type: :string, json_name: "cronSchedule"
  field :paused, 2, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.BackupConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup_scope:
            {:all_namespaces, boolean}
            | {:selected_namespaces, Google.Cloud.Gkebackup.Logging.V1.Namespaces.t() | nil}
            | {:selected_applications,
               Google.Cloud.Gkebackup.Logging.V1.NamespacedNames.t() | nil},
          include_volume_data: boolean,
          include_secrets: boolean,
          encryption_key: Google.Cloud.Gkebackup.Logging.V1.EncryptionKey.t() | nil
        }

  defstruct [:backup_scope, :include_volume_data, :include_secrets, :encryption_key]

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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          cluster: String.t(),
          retention_policy:
            Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.RetentionPolicy.t() | nil,
          labels: %{String.t() => String.t()},
          backup_schedule: Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.Schedule.t() | nil,
          deactivated: boolean,
          backup_config: Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.BackupConfig.t() | nil
        }

  defstruct [
    :description,
    :cluster,
    :retention_policy,
    :labels,
    :backup_schedule,
    :deactivated,
    :backup_config
  ]

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

  def transform_module(), do: nil
end
