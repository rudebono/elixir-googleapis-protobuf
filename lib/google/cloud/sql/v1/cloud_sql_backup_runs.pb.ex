defmodule Google.Cloud.Sql.V1.SqlBackupRunStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SQL_BACKUP_RUN_STATUS_UNSPECIFIED
          | :ENQUEUED
          | :OVERDUE
          | :RUNNING
          | :FAILED
          | :SUCCESSFUL
          | :SKIPPED
          | :DELETION_PENDING
          | :DELETION_FAILED
          | :DELETED

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
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SQL_BACKUP_KIND_UNSPECIFIED | :SNAPSHOT | :PHYSICAL

  field :SQL_BACKUP_KIND_UNSPECIFIED, 0
  field :SNAPSHOT, 1
  field :PHYSICAL, 2
end
defmodule Google.Cloud.Sql.V1.SqlBackupRunType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SQL_BACKUP_RUN_TYPE_UNSPECIFIED | :AUTOMATED | :ON_DEMAND

  field :SQL_BACKUP_RUN_TYPE_UNSPECIFIED, 0
  field :AUTOMATED, 1
  field :ON_DEMAND, 2
end
defmodule Google.Cloud.Sql.V1.SqlBackupRunsDeleteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          instance: String.t(),
          project: String.t()
        }

  defstruct id: 0,
            instance: "",
            project: ""

  field :id, 1, type: :int64
  field :instance, 2, type: :string
  field :project, 3, type: :string
end
defmodule Google.Cloud.Sql.V1.SqlBackupRunsGetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          instance: String.t(),
          project: String.t()
        }

  defstruct id: 0,
            instance: "",
            project: ""

  field :id, 1, type: :int64
  field :instance, 2, type: :string
  field :project, 3, type: :string
end
defmodule Google.Cloud.Sql.V1.SqlBackupRunsInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1.BackupRun.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.BackupRun
end
defmodule Google.Cloud.Sql.V1.SqlBackupRunsListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          max_results: integer,
          page_token: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            max_results: 0,
            page_token: "",
            project: ""

  field :instance, 1, type: :string
  field :max_results, 2, type: :int32, json_name: "maxResults"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :project, 4, type: :string
end
defmodule Google.Cloud.Sql.V1.BackupRun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          status: Google.Cloud.Sql.V1.SqlBackupRunStatus.t(),
          enqueued_time: Google.Protobuf.Timestamp.t() | nil,
          id: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          error: Google.Cloud.Sql.V1.OperationError.t() | nil,
          type: Google.Cloud.Sql.V1.SqlBackupRunType.t(),
          description: String.t(),
          window_start_time: Google.Protobuf.Timestamp.t() | nil,
          instance: String.t(),
          self_link: String.t(),
          location: String.t(),
          disk_encryption_configuration:
            Google.Cloud.Sql.V1.DiskEncryptionConfiguration.t() | nil,
          disk_encryption_status: Google.Cloud.Sql.V1.DiskEncryptionStatus.t() | nil,
          backup_kind: Google.Cloud.Sql.V1.SqlBackupKind.t()
        }

  defstruct kind: "",
            status: :SQL_BACKUP_RUN_STATUS_UNSPECIFIED,
            enqueued_time: nil,
            id: 0,
            start_time: nil,
            end_time: nil,
            error: nil,
            type: :SQL_BACKUP_RUN_TYPE_UNSPECIFIED,
            description: "",
            window_start_time: nil,
            instance: "",
            self_link: "",
            location: "",
            disk_encryption_configuration: nil,
            disk_encryption_status: nil,
            backup_kind: :SQL_BACKUP_KIND_UNSPECIFIED

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
end
defmodule Google.Cloud.Sql.V1.BackupRunsListResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          items: [Google.Cloud.Sql.V1.BackupRun.t()],
          next_page_token: String.t()
        }

  defstruct kind: "",
            items: [],
            next_page_token: ""

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.BackupRun
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Sql.V1.SqlBackupRunsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1.SqlBackupRunsService"

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
