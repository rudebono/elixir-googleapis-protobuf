defmodule Google.Cloud.Gkebackup.Logging.V1.ChangeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CHANGE_TYPE_UNSPECIFIED | :CREATION | :UPDATE | :DELETION

  field :CHANGE_TYPE_UNSPECIFIED, 0
  field :CREATION, 1
  field :UPDATE, 2
  field :DELETION, 3
end

defmodule Google.Cloud.Gkebackup.Logging.V1.BackupPlanChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup_plan: String.t(),
          change_type: Google.Cloud.Gkebackup.Logging.V1.ChangeType.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          input_backup_plan: Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan.t() | nil,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [:backup_plan, :change_type, :update_mask, :input_backup_plan, :error]

  field :backup_plan, 1, type: :string, json_name: "backupPlan"

  field :change_type, 2,
    type: Google.Cloud.Gkebackup.Logging.V1.ChangeType,
    enum: true,
    json_name: "changeType"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :input_backup_plan, 4,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan,
    json_name: "inputBackupPlan"

  field :error, 5, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.BackupChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup: String.t(),
          change_type: Google.Cloud.Gkebackup.Logging.V1.ChangeType.t(),
          scheduled: boolean,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          input_backup: Google.Cloud.Gkebackup.Logging.V1.LoggedBackup.t() | nil,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [:backup, :change_type, :scheduled, :update_mask, :input_backup, :error]

  field :backup, 1, type: :string

  field :change_type, 2,
    type: Google.Cloud.Gkebackup.Logging.V1.ChangeType,
    enum: true,
    json_name: "changeType"

  field :scheduled, 3, type: :bool
  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :input_backup, 5,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackup,
    json_name: "inputBackup"

  field :error, 6, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestorePlanChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          restore_plan: String.t(),
          change_type: Google.Cloud.Gkebackup.Logging.V1.ChangeType.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          input_restore_plan: Google.Cloud.Gkebackup.Logging.V1.LoggedRestorePlan.t() | nil,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [:restore_plan, :change_type, :update_mask, :input_restore_plan, :error]

  field :restore_plan, 1, type: :string, json_name: "restorePlan"

  field :change_type, 2,
    type: Google.Cloud.Gkebackup.Logging.V1.ChangeType,
    enum: true,
    json_name: "changeType"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :input_restore_plan, 4,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedRestorePlan,
    json_name: "inputRestorePlan"

  field :error, 5, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          restore: String.t(),
          change_type: Google.Cloud.Gkebackup.Logging.V1.ChangeType.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          input_restore: Google.Cloud.Gkebackup.Logging.V1.LoggedRestore.t() | nil,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [:restore, :change_type, :update_mask, :input_restore, :error]

  field :restore, 1, type: :string

  field :change_type, 2,
    type: Google.Cloud.Gkebackup.Logging.V1.ChangeType,
    enum: true,
    json_name: "changeType"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :input_restore, 4,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedRestore,
    json_name: "inputRestore"

  field :error, 5, type: Google.Rpc.Status

  def transform_module(), do: nil
end
