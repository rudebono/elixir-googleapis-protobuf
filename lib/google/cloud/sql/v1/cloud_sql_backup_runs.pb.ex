defmodule Google.Cloud.Sql.V1.SqlBackupRunStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_BACKUP_RUN_STATUS_UNSPECIFIED, 0
  field :ENQUEUED, 1
  field :OVERDUE, 2
  field :RUNNING, 3
  field :FAILED, 4
  field :SUCCESSFUL, 5
  field :SKIPPED, 6
  field :DELETION_PENDING, 7
  field :DELETION_FAILED, 8
  field :DELETED, 9
end

defmodule Google.Cloud.Sql.V1.SqlBackupKind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_BACKUP_KIND_UNSPECIFIED, 0
  field :SNAPSHOT, 1
  field :PHYSICAL, 2
end

defmodule Google.Cloud.Sql.V1.SqlBackupRunType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SQL_BACKUP_RUN_TYPE_UNSPECIFIED, 0
  field :AUTOMATED, 1
  field :ON_DEMAND, 2
end

defmodule Google.Cloud.Sql.V1.SqlBackupRunsDeleteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :int64
  field :instance, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlBackupRunsGetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :int64
  field :instance, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlBackupRunsInsertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.BackupRun
end

defmodule Google.Cloud.Sql.V1.SqlBackupRunsListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance, 1, type: :string
  field :max_results, 2, type: :int32, json_name: "maxResults"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :project, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.BackupRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string
  field :status, 2, type: Google.Cloud.Sql.V1.SqlBackupRunStatus, enum: true
  field :enqueued_time, 3, type: Google.Protobuf.Timestamp, json_name: "enqueuedTime"
  field :id, 4, type: :int64
  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :error, 7, type: Google.Cloud.Sql.V1.OperationError
  field :type, 8, type: Google.Cloud.Sql.V1.SqlBackupRunType, enum: true
  field :description, 9, type: :string
  field :window_start_time, 10, type: Google.Protobuf.Timestamp, json_name: "windowStartTime"
  field :instance, 11, type: :string
  field :self_link, 12, type: :string, json_name: "selfLink"
  field :location, 13, type: :string

  field :disk_encryption_configuration, 16,
    type: Google.Cloud.Sql.V1.DiskEncryptionConfiguration,
    json_name: "diskEncryptionConfiguration"

  field :disk_encryption_status, 17,
    type: Google.Cloud.Sql.V1.DiskEncryptionStatus,
    json_name: "diskEncryptionStatus"

  field :backup_kind, 19,
    type: Google.Cloud.Sql.V1.SqlBackupKind,
    json_name: "backupKind",
    enum: true

  field :time_zone, 23, type: :string, json_name: "timeZone"

  field :max_chargeable_bytes, 24,
    proto3_optional: true,
    type: :int64,
    json_name: "maxChargeableBytes",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.BackupRunsListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.BackupRun
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Sql.V1.SqlBackupRunsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlBackupRunsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :Delete, Google.Cloud.Sql.V1.SqlBackupRunsDeleteRequest, Google.Cloud.Sql.V1.Operation

  rpc :Get, Google.Cloud.Sql.V1.SqlBackupRunsGetRequest, Google.Cloud.Sql.V1.BackupRun

  rpc :Insert, Google.Cloud.Sql.V1.SqlBackupRunsInsertRequest, Google.Cloud.Sql.V1.Operation

  rpc :List,
      Google.Cloud.Sql.V1.SqlBackupRunsListRequest,
      Google.Cloud.Sql.V1.BackupRunsListResponse
end

defmodule Google.Cloud.Sql.V1.SqlBackupRunsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlBackupRunsService.Service
end