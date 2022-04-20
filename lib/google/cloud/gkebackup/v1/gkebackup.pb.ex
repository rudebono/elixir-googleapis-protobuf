defmodule Google.Cloud.Gkebackup.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_message: "",
            requested_cancellation: false,
            api_version: ""

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end
defmodule Google.Cloud.Gkebackup.V1.CreateBackupPlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          backup_plan: Google.Cloud.Gkebackup.V1.BackupPlan.t() | nil,
          backup_plan_id: String.t()
        }

  defstruct parent: "",
            backup_plan: nil,
            backup_plan_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :backup_plan, 2,
    type: Google.Cloud.Gkebackup.V1.BackupPlan,
    json_name: "backupPlan",
    deprecated: false

  field :backup_plan_id, 3, type: :string, json_name: "backupPlanId", deprecated: false
end
defmodule Google.Cloud.Gkebackup.V1.ListBackupPlansRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Gkebackup.V1.ListBackupPlansResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup_plans: [Google.Cloud.Gkebackup.V1.BackupPlan.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct backup_plans: [],
            next_page_token: "",
            unreachable: []

  field :backup_plans, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.BackupPlan,
    json_name: "backupPlans"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Gkebackup.V1.GetBackupPlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkebackup.V1.UpdateBackupPlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup_plan: Google.Cloud.Gkebackup.V1.BackupPlan.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct backup_plan: nil,
            update_mask: nil

  field :backup_plan, 1,
    type: Google.Cloud.Gkebackup.V1.BackupPlan,
    json_name: "backupPlan",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Gkebackup.V1.DeleteBackupPlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t()
        }

  defstruct name: "",
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
end
defmodule Google.Cloud.Gkebackup.V1.CreateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          backup: Google.Cloud.Gkebackup.V1.Backup.t() | nil,
          backup_id: String.t()
        }

  defstruct parent: "",
            backup: nil,
            backup_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :backup, 2, type: Google.Cloud.Gkebackup.V1.Backup
  field :backup_id, 3, type: :string, json_name: "backupId"
end
defmodule Google.Cloud.Gkebackup.V1.ListBackupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Gkebackup.V1.ListBackupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backups: [Google.Cloud.Gkebackup.V1.Backup.t()],
          next_page_token: String.t()
        }

  defstruct backups: [],
            next_page_token: ""

  field :backups, 1, repeated: true, type: Google.Cloud.Gkebackup.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Gkebackup.V1.GetBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkebackup.V1.UpdateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup: Google.Cloud.Gkebackup.V1.Backup.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct backup: nil,
            update_mask: nil

  field :backup, 1, type: Google.Cloud.Gkebackup.V1.Backup, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Gkebackup.V1.DeleteBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t(),
          force: boolean
        }

  defstruct name: "",
            etag: "",
            force: false

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :force, 3, type: :bool
end
defmodule Google.Cloud.Gkebackup.V1.ListVolumeBackupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Gkebackup.V1.ListVolumeBackupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          volume_backups: [Google.Cloud.Gkebackup.V1.VolumeBackup.t()],
          next_page_token: String.t()
        }

  defstruct volume_backups: [],
            next_page_token: ""

  field :volume_backups, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.VolumeBackup,
    json_name: "volumeBackups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Gkebackup.V1.GetVolumeBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkebackup.V1.CreateRestorePlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          restore_plan: Google.Cloud.Gkebackup.V1.RestorePlan.t() | nil,
          restore_plan_id: String.t()
        }

  defstruct parent: "",
            restore_plan: nil,
            restore_plan_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :restore_plan, 2,
    type: Google.Cloud.Gkebackup.V1.RestorePlan,
    json_name: "restorePlan",
    deprecated: false

  field :restore_plan_id, 3, type: :string, json_name: "restorePlanId", deprecated: false
end
defmodule Google.Cloud.Gkebackup.V1.ListRestorePlansRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Gkebackup.V1.ListRestorePlansResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          restore_plans: [Google.Cloud.Gkebackup.V1.RestorePlan.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct restore_plans: [],
            next_page_token: "",
            unreachable: []

  field :restore_plans, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestorePlan,
    json_name: "restorePlans"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Gkebackup.V1.GetRestorePlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkebackup.V1.UpdateRestorePlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          restore_plan: Google.Cloud.Gkebackup.V1.RestorePlan.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct restore_plan: nil,
            update_mask: nil

  field :restore_plan, 1,
    type: Google.Cloud.Gkebackup.V1.RestorePlan,
    json_name: "restorePlan",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Gkebackup.V1.DeleteRestorePlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t(),
          force: boolean
        }

  defstruct name: "",
            etag: "",
            force: false

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :force, 3, type: :bool
end
defmodule Google.Cloud.Gkebackup.V1.CreateRestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          restore: Google.Cloud.Gkebackup.V1.Restore.t() | nil,
          restore_id: String.t()
        }

  defstruct parent: "",
            restore: nil,
            restore_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :restore, 2, type: Google.Cloud.Gkebackup.V1.Restore, deprecated: false
  field :restore_id, 3, type: :string, json_name: "restoreId", deprecated: false
end
defmodule Google.Cloud.Gkebackup.V1.ListRestoresRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Gkebackup.V1.ListRestoresResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          restores: [Google.Cloud.Gkebackup.V1.Restore.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct restores: [],
            next_page_token: "",
            unreachable: []

  field :restores, 1, repeated: true, type: Google.Cloud.Gkebackup.V1.Restore
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Gkebackup.V1.GetRestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkebackup.V1.UpdateRestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          restore: Google.Cloud.Gkebackup.V1.Restore.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct restore: nil,
            update_mask: nil

  field :restore, 1, type: Google.Cloud.Gkebackup.V1.Restore, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Gkebackup.V1.DeleteRestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t(),
          force: boolean
        }

  defstruct name: "",
            etag: "",
            force: false

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :force, 3, type: :bool
end
defmodule Google.Cloud.Gkebackup.V1.ListVolumeRestoresRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Gkebackup.V1.ListVolumeRestoresResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          volume_restores: [Google.Cloud.Gkebackup.V1.VolumeRestore.t()],
          next_page_token: String.t()
        }

  defstruct volume_restores: [],
            next_page_token: ""

  field :volume_restores, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.VolumeRestore,
    json_name: "volumeRestores"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Gkebackup.V1.GetVolumeRestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkebackup.V1.BackupForGKE.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.gkebackup.v1.BackupForGKE"

  rpc :CreateBackupPlan,
      Google.Cloud.Gkebackup.V1.CreateBackupPlanRequest,
      Google.Longrunning.Operation

  rpc :ListBackupPlans,
      Google.Cloud.Gkebackup.V1.ListBackupPlansRequest,
      Google.Cloud.Gkebackup.V1.ListBackupPlansResponse

  rpc :GetBackupPlan,
      Google.Cloud.Gkebackup.V1.GetBackupPlanRequest,
      Google.Cloud.Gkebackup.V1.BackupPlan

  rpc :UpdateBackupPlan,
      Google.Cloud.Gkebackup.V1.UpdateBackupPlanRequest,
      Google.Longrunning.Operation

  rpc :DeleteBackupPlan,
      Google.Cloud.Gkebackup.V1.DeleteBackupPlanRequest,
      Google.Longrunning.Operation

  rpc :CreateBackup, Google.Cloud.Gkebackup.V1.CreateBackupRequest, Google.Longrunning.Operation

  rpc :ListBackups,
      Google.Cloud.Gkebackup.V1.ListBackupsRequest,
      Google.Cloud.Gkebackup.V1.ListBackupsResponse

  rpc :GetBackup, Google.Cloud.Gkebackup.V1.GetBackupRequest, Google.Cloud.Gkebackup.V1.Backup

  rpc :UpdateBackup, Google.Cloud.Gkebackup.V1.UpdateBackupRequest, Google.Longrunning.Operation

  rpc :DeleteBackup, Google.Cloud.Gkebackup.V1.DeleteBackupRequest, Google.Longrunning.Operation

  rpc :ListVolumeBackups,
      Google.Cloud.Gkebackup.V1.ListVolumeBackupsRequest,
      Google.Cloud.Gkebackup.V1.ListVolumeBackupsResponse

  rpc :GetVolumeBackup,
      Google.Cloud.Gkebackup.V1.GetVolumeBackupRequest,
      Google.Cloud.Gkebackup.V1.VolumeBackup

  rpc :CreateRestorePlan,
      Google.Cloud.Gkebackup.V1.CreateRestorePlanRequest,
      Google.Longrunning.Operation

  rpc :ListRestorePlans,
      Google.Cloud.Gkebackup.V1.ListRestorePlansRequest,
      Google.Cloud.Gkebackup.V1.ListRestorePlansResponse

  rpc :GetRestorePlan,
      Google.Cloud.Gkebackup.V1.GetRestorePlanRequest,
      Google.Cloud.Gkebackup.V1.RestorePlan

  rpc :UpdateRestorePlan,
      Google.Cloud.Gkebackup.V1.UpdateRestorePlanRequest,
      Google.Longrunning.Operation

  rpc :DeleteRestorePlan,
      Google.Cloud.Gkebackup.V1.DeleteRestorePlanRequest,
      Google.Longrunning.Operation

  rpc :CreateRestore, Google.Cloud.Gkebackup.V1.CreateRestoreRequest, Google.Longrunning.Operation

  rpc :ListRestores,
      Google.Cloud.Gkebackup.V1.ListRestoresRequest,
      Google.Cloud.Gkebackup.V1.ListRestoresResponse

  rpc :GetRestore, Google.Cloud.Gkebackup.V1.GetRestoreRequest, Google.Cloud.Gkebackup.V1.Restore

  rpc :UpdateRestore, Google.Cloud.Gkebackup.V1.UpdateRestoreRequest, Google.Longrunning.Operation

  rpc :DeleteRestore, Google.Cloud.Gkebackup.V1.DeleteRestoreRequest, Google.Longrunning.Operation

  rpc :ListVolumeRestores,
      Google.Cloud.Gkebackup.V1.ListVolumeRestoresRequest,
      Google.Cloud.Gkebackup.V1.ListVolumeRestoresResponse

  rpc :GetVolumeRestore,
      Google.Cloud.Gkebackup.V1.GetVolumeRestoreRequest,
      Google.Cloud.Gkebackup.V1.VolumeRestore
end

defmodule Google.Cloud.Gkebackup.V1.BackupForGKE.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gkebackup.V1.BackupForGKE.Service
end
