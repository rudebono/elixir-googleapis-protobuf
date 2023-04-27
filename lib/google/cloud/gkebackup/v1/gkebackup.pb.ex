defmodule Google.Cloud.Gkebackup.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :backup_plan, 2,
    type: Google.Cloud.Gkebackup.V1.BackupPlan,
    json_name: "backupPlan",
    deprecated: false

  field :backup_plan_id, 3, type: :string, json_name: "backupPlanId", deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.ListBackupPlansRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Gkebackup.V1.ListBackupPlansResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup_plans, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.BackupPlan,
    json_name: "backupPlans"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gkebackup.V1.GetBackupPlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.UpdateBackupPlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup_plan, 1,
    type: Google.Cloud.Gkebackup.V1.BackupPlan,
    json_name: "backupPlan",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Gkebackup.V1.DeleteBackupPlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.V1.CreateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup, 2, type: Google.Cloud.Gkebackup.V1.Backup
  field :backup_id, 3, type: :string, json_name: "backupId"
end

defmodule Google.Cloud.Gkebackup.V1.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Gkebackup.V1.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Gkebackup.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Gkebackup.V1.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup, 1, type: Google.Cloud.Gkebackup.V1.Backup, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Gkebackup.V1.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Gkebackup.V1.ListVolumeBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Gkebackup.V1.ListVolumeBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :volume_backups, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.VolumeBackup,
    json_name: "volumeBackups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Gkebackup.V1.GetVolumeBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.CreateRestorePlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :restore_plan, 2,
    type: Google.Cloud.Gkebackup.V1.RestorePlan,
    json_name: "restorePlan",
    deprecated: false

  field :restore_plan_id, 3, type: :string, json_name: "restorePlanId", deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.ListRestorePlansRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Gkebackup.V1.ListRestorePlansResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :restore_plans, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestorePlan,
    json_name: "restorePlans"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gkebackup.V1.GetRestorePlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.UpdateRestorePlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :restore_plan, 1,
    type: Google.Cloud.Gkebackup.V1.RestorePlan,
    json_name: "restorePlan",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Gkebackup.V1.DeleteRestorePlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Gkebackup.V1.CreateRestoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :restore, 2, type: Google.Cloud.Gkebackup.V1.Restore, deprecated: false
  field :restore_id, 3, type: :string, json_name: "restoreId", deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.ListRestoresRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Gkebackup.V1.ListRestoresResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :restores, 1, repeated: true, type: Google.Cloud.Gkebackup.V1.Restore
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gkebackup.V1.GetRestoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.UpdateRestoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :restore, 1, type: Google.Cloud.Gkebackup.V1.Restore, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Gkebackup.V1.DeleteRestoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Gkebackup.V1.ListVolumeRestoresRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Gkebackup.V1.ListVolumeRestoresResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :volume_restores, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.VolumeRestore,
    json_name: "volumeRestores"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Gkebackup.V1.GetVolumeRestoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.BackupForGKE.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.gkebackup.v1.BackupForGKE",
    protoc_gen_elixir_version: "0.12.0"

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