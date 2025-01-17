defmodule Google.Cloud.Gkebackup.Logging.V1.ChangeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CHANGE_TYPE_UNSPECIFIED, 0
  field :CREATION, 1
  field :UPDATE, 2
  field :DELETION, 3
end

defmodule Google.Cloud.Gkebackup.Logging.V1.BackupPlanChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :backup_plan, 1, type: :string, json_name: "backupPlan"

  field :change_type, 2,
    type: Google.Cloud.Gkebackup.Logging.V1.ChangeType,
    json_name: "changeType",
    enum: true

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :input_backup_plan, 4,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlan,
    json_name: "inputBackupPlan"

  field :error, 5, type: Google.Rpc.Status
end

defmodule Google.Cloud.Gkebackup.Logging.V1.BackupChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :backup, 1, type: :string

  field :change_type, 2,
    type: Google.Cloud.Gkebackup.Logging.V1.ChangeType,
    json_name: "changeType",
    enum: true

  field :scheduled, 3, type: :bool
  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :input_backup, 5,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackup,
    json_name: "inputBackup"

  field :error, 6, type: Google.Rpc.Status
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestorePlanChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :restore_plan, 1, type: :string, json_name: "restorePlan"

  field :change_type, 2,
    type: Google.Cloud.Gkebackup.Logging.V1.ChangeType,
    json_name: "changeType",
    enum: true

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :input_restore_plan, 4,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedRestorePlan,
    json_name: "inputRestorePlan"

  field :error, 5, type: Google.Rpc.Status
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :restore, 1, type: :string

  field :change_type, 2,
    type: Google.Cloud.Gkebackup.Logging.V1.ChangeType,
    json_name: "changeType",
    enum: true

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :input_restore, 4,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedRestore,
    json_name: "inputRestore"

  field :error, 5, type: Google.Rpc.Status
end
