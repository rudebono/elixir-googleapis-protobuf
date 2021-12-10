defmodule Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest.ExternalSyncMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :EXTERNAL_SYNC_MODE_UNSPECIFIED | :ONLINE | :OFFLINE

  field :EXTERNAL_SYNC_MODE_UNSPECIFIED, 0
  field :ONLINE, 1
  field :OFFLINE, 2
end
defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsDeleteRequest do
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
defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsGetRequest do
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
defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.BackupRun.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.BackupRun
end
defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsListRequest do
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
defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesDeleteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          instance: String.t(),
          project: String.t()
        }

  defstruct database: "",
            instance: "",
            project: ""

  field :database, 1, type: :string
  field :instance, 2, type: :string
  field :project, 3, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesGetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          instance: String.t(),
          project: String.t()
        }

  defstruct database: "",
            instance: "",
            project: ""

  field :database, 1, type: :string
  field :instance, 2, type: :string
  field :project, 3, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.Database.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.Database
end
defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesUpdateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.Database.t() | nil
        }

  defstruct database: "",
            instance: "",
            project: "",
            body: nil

  field :database, 1, type: :string
  field :instance, 2, type: :string
  field :project, 3, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.Database
end
defmodule Google.Cloud.Sql.V1beta4.SqlFlagsListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database_version: String.t()
        }

  defstruct database_version: ""

  field :database_version, 1, type: :string, json_name: "databaseVersion"
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesAddServerCaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesCloneRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.InstancesCloneRequest.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesCloneRequest
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesDeleteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesDemoteMasterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.InstancesDemoteMasterRequest.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesDemoteMasterRequest
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesExportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.InstancesExportRequest.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesExportRequest
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesFailoverRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.InstancesFailoverRequest.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesFailoverRequest
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesGetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesImportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.InstancesImportRequest.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesImportRequest
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.DatabaseInstance.t() | nil
        }

  defstruct project: "",
            body: nil

  field :project, 1, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.DatabaseInstance
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          max_results: non_neg_integer,
          page_token: String.t(),
          project: String.t()
        }

  defstruct filter: "",
            max_results: 0,
            page_token: "",
            project: ""

  field :filter, 1, type: :string
  field :max_results, 2, type: :uint32, json_name: "maxResults"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :project, 4, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesListServerCasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesPatchRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.DatabaseInstance.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.DatabaseInstance
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesPromoteReplicaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesResetSslConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesRestartRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesRestoreBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.InstancesRestoreBackupRequest.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesRestoreBackupRequest
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesRotateServerCaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.InstancesRotateServerCaRequest.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesRotateServerCaRequest
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesStartReplicaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesStopReplicaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesTruncateLogRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.InstancesTruncateLogRequest.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.InstancesTruncateLogRequest
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesUpdateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.DatabaseInstance.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.DatabaseInstance
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequestBody.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequestBody
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          verify_connection_only: boolean,
          sync_mode:
            Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest.ExternalSyncMode.t()
        }

  defstruct instance: "",
            project: "",
            verify_connection_only: false,
            sync_mode: :EXTERNAL_SYNC_MODE_UNSPECIFIED

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :verify_connection_only, 3, type: :bool, json_name: "verifyConnectionOnly"

  field :sync_mode, 4,
    type: Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest.ExternalSyncMode,
    json_name: "syncMode",
    enum: true
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesStartExternalSyncRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          sync_mode:
            Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest.ExternalSyncMode.t(),
          skip_verification: boolean
        }

  defstruct instance: "",
            project: "",
            sync_mode: :EXTERNAL_SYNC_MODE_UNSPECIFIED,
            skip_verification: false

  field :instance, 1, type: :string
  field :project, 2, type: :string

  field :sync_mode, 3,
    type: Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest.ExternalSyncMode,
    json_name: "syncMode",
    enum: true

  field :skip_verification, 4, type: :bool, json_name: "skipVerification"
end
defmodule Google.Cloud.Sql.V1beta4.SqlOperationsGetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: String.t(),
          project: String.t()
        }

  defstruct operation: "",
            project: ""

  field :operation, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlOperationsListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          max_results: non_neg_integer,
          page_token: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            max_results: 0,
            page_token: "",
            project: ""

  field :instance, 1, type: :string
  field :max_results, 2, type: :uint32, json_name: "maxResults"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :project, 4, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesCreateEphemeralCertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.SslCertsCreateEphemeralRequest.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.SslCertsCreateEphemeralRequest
end
defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsDeleteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          sha1_fingerprint: String.t()
        }

  defstruct instance: "",
            project: "",
            sha1_fingerprint: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :sha1_fingerprint, 3, type: :string, json_name: "sha1Fingerprint"
end
defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsGetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          sha1_fingerprint: String.t()
        }

  defstruct instance: "",
            project: "",
            sha1_fingerprint: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :sha1_fingerprint, 3, type: :string, json_name: "sha1Fingerprint"
end
defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.SslCertsInsertRequest.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.SslCertsInsertRequest
end
defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1beta4.SqlBackupRunsService"

  rpc :Delete,
      Google.Cloud.Sql.V1beta4.SqlBackupRunsDeleteRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Get, Google.Cloud.Sql.V1beta4.SqlBackupRunsGetRequest, Google.Cloud.Sql.V1beta4.BackupRun

  rpc :Insert,
      Google.Cloud.Sql.V1beta4.SqlBackupRunsInsertRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlBackupRunsListRequest,
      Google.Cloud.Sql.V1beta4.BackupRunsListResponse
end

defmodule Google.Cloud.Sql.V1beta4.SqlBackupRunsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlBackupRunsService.Service
end
defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1beta4.SqlDatabasesService"

  rpc :Delete,
      Google.Cloud.Sql.V1beta4.SqlDatabasesDeleteRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Get, Google.Cloud.Sql.V1beta4.SqlDatabasesGetRequest, Google.Cloud.Sql.V1beta4.Database

  rpc :Insert,
      Google.Cloud.Sql.V1beta4.SqlDatabasesInsertRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlDatabasesListRequest,
      Google.Cloud.Sql.V1beta4.DatabasesListResponse

  rpc :Patch,
      Google.Cloud.Sql.V1beta4.SqlDatabasesUpdateRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Update,
      Google.Cloud.Sql.V1beta4.SqlDatabasesUpdateRequest,
      Google.Cloud.Sql.V1beta4.Operation
end

defmodule Google.Cloud.Sql.V1beta4.SqlDatabasesService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlDatabasesService.Service
end
defmodule Google.Cloud.Sql.V1beta4.SqlFlagsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1beta4.SqlFlagsService"

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlFlagsListRequest,
      Google.Cloud.Sql.V1beta4.FlagsListResponse
end

defmodule Google.Cloud.Sql.V1beta4.SqlFlagsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlFlagsService.Service
end
defmodule Google.Cloud.Sql.V1beta4.SqlInstancesService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1beta4.SqlInstancesService"

  rpc :AddServerCa,
      Google.Cloud.Sql.V1beta4.SqlInstancesAddServerCaRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Clone,
      Google.Cloud.Sql.V1beta4.SqlInstancesCloneRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Delete,
      Google.Cloud.Sql.V1beta4.SqlInstancesDeleteRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :DemoteMaster,
      Google.Cloud.Sql.V1beta4.SqlInstancesDemoteMasterRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Export,
      Google.Cloud.Sql.V1beta4.SqlInstancesExportRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Failover,
      Google.Cloud.Sql.V1beta4.SqlInstancesFailoverRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Get,
      Google.Cloud.Sql.V1beta4.SqlInstancesGetRequest,
      Google.Cloud.Sql.V1beta4.DatabaseInstance

  rpc :Import,
      Google.Cloud.Sql.V1beta4.SqlInstancesImportRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Insert,
      Google.Cloud.Sql.V1beta4.SqlInstancesInsertRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlInstancesListRequest,
      Google.Cloud.Sql.V1beta4.InstancesListResponse

  rpc :ListServerCas,
      Google.Cloud.Sql.V1beta4.SqlInstancesListServerCasRequest,
      Google.Cloud.Sql.V1beta4.InstancesListServerCasResponse

  rpc :Patch,
      Google.Cloud.Sql.V1beta4.SqlInstancesPatchRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :PromoteReplica,
      Google.Cloud.Sql.V1beta4.SqlInstancesPromoteReplicaRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :ResetSslConfig,
      Google.Cloud.Sql.V1beta4.SqlInstancesResetSslConfigRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Restart,
      Google.Cloud.Sql.V1beta4.SqlInstancesRestartRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :RestoreBackup,
      Google.Cloud.Sql.V1beta4.SqlInstancesRestoreBackupRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :RotateServerCa,
      Google.Cloud.Sql.V1beta4.SqlInstancesRotateServerCaRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :StartReplica,
      Google.Cloud.Sql.V1beta4.SqlInstancesStartReplicaRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :StopReplica,
      Google.Cloud.Sql.V1beta4.SqlInstancesStopReplicaRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :TruncateLog,
      Google.Cloud.Sql.V1beta4.SqlInstancesTruncateLogRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Update,
      Google.Cloud.Sql.V1beta4.SqlInstancesUpdateRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :CreateEphemeral,
      Google.Cloud.Sql.V1beta4.SqlInstancesCreateEphemeralCertRequest,
      Google.Cloud.Sql.V1beta4.SslCert

  rpc :RescheduleMaintenance,
      Google.Cloud.Sql.V1beta4.SqlInstancesRescheduleMaintenanceRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :VerifyExternalSyncSettings,
      Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsRequest,
      Google.Cloud.Sql.V1beta4.SqlInstancesVerifyExternalSyncSettingsResponse

  rpc :StartExternalSync,
      Google.Cloud.Sql.V1beta4.SqlInstancesStartExternalSyncRequest,
      Google.Cloud.Sql.V1beta4.Operation
end

defmodule Google.Cloud.Sql.V1beta4.SqlInstancesService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlInstancesService.Service
end
defmodule Google.Cloud.Sql.V1beta4.SqlOperationsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1beta4.SqlOperationsService"

  rpc :Get, Google.Cloud.Sql.V1beta4.SqlOperationsGetRequest, Google.Cloud.Sql.V1beta4.Operation

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlOperationsListRequest,
      Google.Cloud.Sql.V1beta4.OperationsListResponse
end

defmodule Google.Cloud.Sql.V1beta4.SqlOperationsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlOperationsService.Service
end
defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1beta4.SqlSslCertsService"

  rpc :Delete,
      Google.Cloud.Sql.V1beta4.SqlSslCertsDeleteRequest,
      Google.Cloud.Sql.V1beta4.Operation

  rpc :Get, Google.Cloud.Sql.V1beta4.SqlSslCertsGetRequest, Google.Cloud.Sql.V1beta4.SslCert

  rpc :Insert,
      Google.Cloud.Sql.V1beta4.SqlSslCertsInsertRequest,
      Google.Cloud.Sql.V1beta4.SslCertsInsertResponse

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlSslCertsListRequest,
      Google.Cloud.Sql.V1beta4.SslCertsListResponse
end

defmodule Google.Cloud.Sql.V1beta4.SqlSslCertsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlSslCertsService.Service
end
