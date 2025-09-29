defmodule Google.Cloud.Alloydb.V1.UpgradeClusterResponse.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :NOT_STARTED, 4
  field :IN_PROGRESS, 5
  field :SUCCESS, 1
  field :FAILED, 2
  field :PARTIAL_SUCCESS, 3
  field :CANCEL_IN_PROGRESS, 6
  field :CANCELLED, 7
end

defmodule Google.Cloud.Alloydb.V1.UpgradeClusterResponse.Stage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STAGE_UNSPECIFIED, 0
  field :ALLOYDB_PRECHECK, 1
  field :PG_UPGRADE_CHECK, 2
  field :PREPARE_FOR_UPGRADE, 5
  field :PRIMARY_INSTANCE_UPGRADE, 3
  field :READ_POOL_INSTANCES_UPGRADE, 4
  field :ROLLBACK, 6
  field :CLEANUP, 7
end

defmodule Google.Cloud.Alloydb.V1.BatchCreateInstanceStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING_CREATE, 1
  field :READY, 2
  field :CREATING, 3
  field :DELETING, 4
  field :FAILED, 5
  field :ROLLED_BACK, 6
end

defmodule Google.Cloud.Alloydb.V1.InjectFaultRequest.FaultType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FAULT_TYPE_UNSPECIFIED, 0
  field :STOP_VM, 1
end

defmodule Google.Cloud.Alloydb.V1.ExecuteSqlMetadata.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :OK, 1
  field :PARTIAL, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Alloydb.V1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Alloydb.V1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Alloydb.V1.ClusterView, enum: true, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.CreateSecondaryClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Alloydb.V1.Cluster, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 6, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Alloydb.V1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Cloud.Alloydb.V1.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.GcsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ExportClusterRequest.CsvExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :select_query, 1, type: :string, json_name: "selectQuery", deprecated: false
  field :field_delimiter, 2, type: :string, json_name: "fieldDelimiter", deprecated: false
  field :quote_character, 3, type: :string, json_name: "quoteCharacter", deprecated: false
  field :escape_character, 4, type: :string, json_name: "escapeCharacter", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ExportClusterRequest.SqlExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tables, 1, repeated: true, type: :string, deprecated: false

  field :schema_only, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "schemaOnly",
    deprecated: false

  field :clean_target_objects, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "cleanTargetObjects",
    deprecated: false

  field :if_exist_target_objects, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "ifExistTargetObjects",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ExportClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  oneof :export_options, 1

  field :gcs_destination, 2,
    type: Google.Cloud.Alloydb.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false

  field :csv_export_options, 4,
    type: Google.Cloud.Alloydb.V1.ExportClusterRequest.CsvExportOptions,
    json_name: "csvExportOptions",
    oneof: 1

  field :sql_export_options, 5,
    type: Google.Cloud.Alloydb.V1.ExportClusterRequest.SqlExportOptions,
    json_name: "sqlExportOptions",
    oneof: 1

  field :name, 1, type: :string, deprecated: false
  field :database, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ExportClusterResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 2,
    type: Google.Cloud.Alloydb.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ImportClusterRequest.SqlImportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Alloydb.V1.ImportClusterRequest.CsvImportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table, 1, type: :string, deprecated: false
  field :columns, 2, repeated: true, type: :string, deprecated: false
  field :field_delimiter, 3, type: :string, json_name: "fieldDelimiter", deprecated: false
  field :quote_character, 4, type: :string, json_name: "quoteCharacter", deprecated: false
  field :escape_character, 5, type: :string, json_name: "escapeCharacter", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ImportClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :import_options, 0

  field :sql_import_options, 4,
    type: Google.Cloud.Alloydb.V1.ImportClusterRequest.SqlImportOptions,
    json_name: "sqlImportOptions",
    oneof: 0

  field :csv_import_options, 7,
    type: Google.Cloud.Alloydb.V1.ImportClusterRequest.CsvImportOptions,
    json_name: "csvImportOptions",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :gcs_uri, 2, type: :string, json_name: "gcsUri", deprecated: false
  field :database, 3, type: :string, deprecated: false
  field :user, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ImportClusterResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bytes_downloaded, 1, type: :int64, json_name: "bytesDownloaded", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.UpgradeClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version, 2, type: Google.Cloud.Alloydb.V1.DatabaseVersion, enum: true, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.UpgradeClusterResponse.StageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stage, 1, type: Google.Cloud.Alloydb.V1.UpgradeClusterResponse.Stage, enum: true
  field :status, 2, type: Google.Cloud.Alloydb.V1.UpgradeClusterResponse.Status, enum: true
  field :logs_url, 3, type: :string, json_name: "logsUrl"
end

defmodule Google.Cloud.Alloydb.V1.UpgradeClusterResponse.InstanceUpgradeDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :upgrade_status, 2,
    type: Google.Cloud.Alloydb.V1.UpgradeClusterResponse.Status,
    json_name: "upgradeStatus",
    enum: true

  field :instance_type, 3,
    type: Google.Cloud.Alloydb.V1.Instance.InstanceType,
    json_name: "instanceType",
    enum: true
end

defmodule Google.Cloud.Alloydb.V1.UpgradeClusterResponse.ClusterUpgradeDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :upgrade_status, 2,
    type: Google.Cloud.Alloydb.V1.UpgradeClusterResponse.Status,
    json_name: "upgradeStatus",
    enum: true

  field :cluster_type, 3,
    type: Google.Cloud.Alloydb.V1.Cluster.ClusterType,
    json_name: "clusterType",
    enum: true

  field :database_version, 4,
    type: Google.Cloud.Alloydb.V1.DatabaseVersion,
    json_name: "databaseVersion",
    enum: true

  field :stage_info, 5,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.UpgradeClusterResponse.StageInfo,
    json_name: "stageInfo"

  field :instance_upgrade_details, 6,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.UpgradeClusterResponse.InstanceUpgradeDetails,
    json_name: "instanceUpgradeDetails"
end

defmodule Google.Cloud.Alloydb.V1.UpgradeClusterResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Google.Cloud.Alloydb.V1.UpgradeClusterResponse.Status, enum: true
  field :message, 2, type: :string

  field :cluster_upgrade_details, 3,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.UpgradeClusterResponse.ClusterUpgradeDetails,
    json_name: "clusterUpgradeDetails"
end

defmodule Google.Cloud.Alloydb.V1.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.SwitchoverClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.PromoteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.RestoreClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :backup_source, 4,
    type: Google.Cloud.Alloydb.V1.BackupSource,
    json_name: "backupSource",
    oneof: 0

  field :continuous_backup_source, 8,
    type: Google.Cloud.Alloydb.V1.ContinuousBackupSource,
    json_name: "continuousBackupSource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Alloydb.V1.Cluster, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 6, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Alloydb.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Alloydb.V1.InstanceView, enum: true
end

defmodule Google.Cloud.Alloydb.V1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Alloydb.V1.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.CreateSecondaryInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Alloydb.V1.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.CreateInstanceRequests do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_instance_requests, 1,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.CreateInstanceRequest,
    json_name: "createInstanceRequests",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.BatchCreateInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :requests, 2, type: Google.Cloud.Alloydb.V1.CreateInstanceRequests, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.BatchCreateInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Alloydb.V1.Instance
end

defmodule Google.Cloud.Alloydb.V1.BatchCreateInstancesMetadata.InstanceStatusesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Alloydb.V1.BatchCreateInstanceStatus
end

defmodule Google.Cloud.Alloydb.V1.BatchCreateInstancesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance_targets, 1, repeated: true, type: :string, json_name: "instanceTargets"

  field :instance_statuses, 2,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.BatchCreateInstancesMetadata.InstanceStatusesEntry,
    json_name: "instanceStatuses",
    map: true
end

defmodule Google.Cloud.Alloydb.V1.BatchCreateInstanceStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Alloydb.V1.BatchCreateInstanceStatus.State, enum: true
  field :error_msg, 2, type: :string, json_name: "errorMsg"
  field :error, 4, type: Google.Rpc.Status
  field :type, 3, type: Google.Cloud.Alloydb.V1.Instance.InstanceType, enum: true
end

defmodule Google.Cloud.Alloydb.V1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Alloydb.V1.Instance, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.FailoverInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.InjectFaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fault_type, 1,
    type: Google.Cloud.Alloydb.V1.InjectFaultRequest.FaultType,
    json_name: "faultType",
    enum: true,
    deprecated: false

  field :name, 2, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.RestartInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :node_ids, 4, repeated: true, type: :string, json_name: "nodeIds", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ExecuteSqlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :user_credential, 0

  field :password, 5, type: :string, oneof: 0, deprecated: false
  field :instance, 1, type: :string, deprecated: false
  field :database, 2, type: :string, deprecated: false
  field :user, 3, type: :string, deprecated: false
  field :sql_statement, 4, type: :string, json_name: "sqlStatement", deprecated: false
  field :validate_only, 6, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ExecuteSqlResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sql_results, 1,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.SqlResult,
    json_name: "sqlResults"

  field :metadata, 3, type: Google.Cloud.Alloydb.V1.ExecuteSqlMetadata
end

defmodule Google.Cloud.Alloydb.V1.ExecuteSqlMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string
  field :partial_result, 2, type: :bool, json_name: "partialResult"

  field :sql_statement_execution_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "sqlStatementExecutionDuration"

  field :status, 4, type: Google.Cloud.Alloydb.V1.ExecuteSqlMetadata.Status, enum: true
end

defmodule Google.Cloud.Alloydb.V1.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Alloydb.V1.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Alloydb.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.CreateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :backup, 3, type: Google.Cloud.Alloydb.V1.Backup, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :backup, 2, type: Google.Cloud.Alloydb.V1.Backup, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListSupportedDatabaseFlagsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :scope, 6,
    type: Google.Cloud.Alloydb.V1.SupportedDatabaseFlag.Scope,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListSupportedDatabaseFlagsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :supported_database_flags, 1,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.SupportedDatabaseFlag,
    json_name: "supportedDatabaseFlags"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Alloydb.V1.GenerateClientCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false

  field :cert_duration, 4,
    type: Google.Protobuf.Duration,
    json_name: "certDuration",
    deprecated: false

  field :public_key, 5, type: :string, json_name: "publicKey", deprecated: false

  field :use_metadata_exchange, 6,
    type: :bool,
    json_name: "useMetadataExchange",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.GenerateClientCertificateResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pem_certificate_chain, 2,
    repeated: true,
    type: :string,
    json_name: "pemCertificateChain",
    deprecated: false

  field :ca_cert, 3, type: :string, json_name: "caCert", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.GetConnectionInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :request_specific, 0

  field :batch_create_instances_metadata, 8,
    type: Google.Cloud.Alloydb.V1.BatchCreateInstancesMetadata,
    json_name: "batchCreateInstancesMetadata",
    oneof: 0,
    deprecated: false

  field :upgrade_cluster_status, 10,
    type: Google.Cloud.Alloydb.V1.UpgradeClusterStatus,
    json_name: "upgradeClusterStatus",
    oneof: 0,
    deprecated: false

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

defmodule Google.Cloud.Alloydb.V1.UpgradeClusterStatus.StageStatus.StageSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :estimated_start_time, 1, type: Google.Protobuf.Timestamp, json_name: "estimatedStartTime"
  field :actual_start_time, 2, type: Google.Protobuf.Timestamp, json_name: "actualStartTime"
  field :estimated_end_time, 3, type: Google.Protobuf.Timestamp, json_name: "estimatedEndTime"
  field :actual_end_time, 4, type: Google.Protobuf.Timestamp, json_name: "actualEndTime"
end

defmodule Google.Cloud.Alloydb.V1.UpgradeClusterStatus.StageStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :stage_specific_status, 0

  field :read_pool_instances_upgrade, 11,
    type: Google.Cloud.Alloydb.V1.UpgradeClusterStatus.ReadPoolInstancesUpgradeStageStatus,
    json_name: "readPoolInstancesUpgrade",
    oneof: 0

  field :stage, 1, type: Google.Cloud.Alloydb.V1.UpgradeClusterResponse.Stage, enum: true
  field :state, 2, type: Google.Cloud.Alloydb.V1.UpgradeClusterResponse.Status, enum: true

  field :schedule, 3,
    type: Google.Cloud.Alloydb.V1.UpgradeClusterStatus.StageStatus.StageSchedule,
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.UpgradeClusterStatus.ReadPoolInstancesUpgradeStageStatus.Stats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :not_started, 1, type: :int32, json_name: "notStarted"
  field :ongoing, 2, type: :int32
  field :success, 3, type: :int32
  field :failed, 4, type: :int32
end

defmodule Google.Cloud.Alloydb.V1.UpgradeClusterStatus.ReadPoolInstancesUpgradeStageStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :upgrade_stats, 1,
    type: Google.Cloud.Alloydb.V1.UpgradeClusterStatus.ReadPoolInstancesUpgradeStageStatus.Stats,
    json_name: "upgradeStats"
end

defmodule Google.Cloud.Alloydb.V1.UpgradeClusterStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Alloydb.V1.UpgradeClusterResponse.Status, enum: true
  field :cancellable, 2, type: :bool

  field :source_version, 3,
    type: Google.Cloud.Alloydb.V1.DatabaseVersion,
    json_name: "sourceVersion",
    enum: true

  field :target_version, 4,
    type: Google.Cloud.Alloydb.V1.DatabaseVersion,
    json_name: "targetVersion",
    enum: true

  field :stages, 5, repeated: true, type: Google.Cloud.Alloydb.V1.UpgradeClusterStatus.StageStatus
end

defmodule Google.Cloud.Alloydb.V1.ListUsersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListUsersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :users, 1, repeated: true, type: Google.Cloud.Alloydb.V1.User
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1.GetUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.CreateUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :user_id, 2, type: :string, json_name: "userId", deprecated: false
  field :user, 3, type: Google.Cloud.Alloydb.V1.User, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.UpdateUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :user, 2, type: Google.Cloud.Alloydb.V1.User, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.DeleteUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListDatabasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListDatabasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :databases, 1, repeated: true, type: Google.Cloud.Alloydb.V1.Database
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Alloydb.V1.AlloyDBAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.alloydb.v1.AlloyDBAdmin",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListClusters,
      Google.Cloud.Alloydb.V1.ListClustersRequest,
      Google.Cloud.Alloydb.V1.ListClustersResponse

  rpc :GetCluster, Google.Cloud.Alloydb.V1.GetClusterRequest, Google.Cloud.Alloydb.V1.Cluster

  rpc :CreateCluster, Google.Cloud.Alloydb.V1.CreateClusterRequest, Google.Longrunning.Operation

  rpc :UpdateCluster, Google.Cloud.Alloydb.V1.UpdateClusterRequest, Google.Longrunning.Operation

  rpc :ExportCluster, Google.Cloud.Alloydb.V1.ExportClusterRequest, Google.Longrunning.Operation

  rpc :ImportCluster, Google.Cloud.Alloydb.V1.ImportClusterRequest, Google.Longrunning.Operation

  rpc :UpgradeCluster, Google.Cloud.Alloydb.V1.UpgradeClusterRequest, Google.Longrunning.Operation

  rpc :DeleteCluster, Google.Cloud.Alloydb.V1.DeleteClusterRequest, Google.Longrunning.Operation

  rpc :PromoteCluster, Google.Cloud.Alloydb.V1.PromoteClusterRequest, Google.Longrunning.Operation

  rpc :SwitchoverCluster,
      Google.Cloud.Alloydb.V1.SwitchoverClusterRequest,
      Google.Longrunning.Operation

  rpc :RestoreCluster, Google.Cloud.Alloydb.V1.RestoreClusterRequest, Google.Longrunning.Operation

  rpc :CreateSecondaryCluster,
      Google.Cloud.Alloydb.V1.CreateSecondaryClusterRequest,
      Google.Longrunning.Operation

  rpc :ListInstances,
      Google.Cloud.Alloydb.V1.ListInstancesRequest,
      Google.Cloud.Alloydb.V1.ListInstancesResponse

  rpc :GetInstance, Google.Cloud.Alloydb.V1.GetInstanceRequest, Google.Cloud.Alloydb.V1.Instance

  rpc :CreateInstance, Google.Cloud.Alloydb.V1.CreateInstanceRequest, Google.Longrunning.Operation

  rpc :CreateSecondaryInstance,
      Google.Cloud.Alloydb.V1.CreateSecondaryInstanceRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateInstances,
      Google.Cloud.Alloydb.V1.BatchCreateInstancesRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance, Google.Cloud.Alloydb.V1.UpdateInstanceRequest, Google.Longrunning.Operation

  rpc :DeleteInstance, Google.Cloud.Alloydb.V1.DeleteInstanceRequest, Google.Longrunning.Operation

  rpc :FailoverInstance,
      Google.Cloud.Alloydb.V1.FailoverInstanceRequest,
      Google.Longrunning.Operation

  rpc :InjectFault, Google.Cloud.Alloydb.V1.InjectFaultRequest, Google.Longrunning.Operation

  rpc :RestartInstance,
      Google.Cloud.Alloydb.V1.RestartInstanceRequest,
      Google.Longrunning.Operation

  rpc :ExecuteSql,
      Google.Cloud.Alloydb.V1.ExecuteSqlRequest,
      Google.Cloud.Alloydb.V1.ExecuteSqlResponse

  rpc :ListBackups,
      Google.Cloud.Alloydb.V1.ListBackupsRequest,
      Google.Cloud.Alloydb.V1.ListBackupsResponse

  rpc :GetBackup, Google.Cloud.Alloydb.V1.GetBackupRequest, Google.Cloud.Alloydb.V1.Backup

  rpc :CreateBackup, Google.Cloud.Alloydb.V1.CreateBackupRequest, Google.Longrunning.Operation

  rpc :UpdateBackup, Google.Cloud.Alloydb.V1.UpdateBackupRequest, Google.Longrunning.Operation

  rpc :DeleteBackup, Google.Cloud.Alloydb.V1.DeleteBackupRequest, Google.Longrunning.Operation

  rpc :ListSupportedDatabaseFlags,
      Google.Cloud.Alloydb.V1.ListSupportedDatabaseFlagsRequest,
      Google.Cloud.Alloydb.V1.ListSupportedDatabaseFlagsResponse

  rpc :GenerateClientCertificate,
      Google.Cloud.Alloydb.V1.GenerateClientCertificateRequest,
      Google.Cloud.Alloydb.V1.GenerateClientCertificateResponse

  rpc :GetConnectionInfo,
      Google.Cloud.Alloydb.V1.GetConnectionInfoRequest,
      Google.Cloud.Alloydb.V1.ConnectionInfo

  rpc :ListUsers,
      Google.Cloud.Alloydb.V1.ListUsersRequest,
      Google.Cloud.Alloydb.V1.ListUsersResponse

  rpc :GetUser, Google.Cloud.Alloydb.V1.GetUserRequest, Google.Cloud.Alloydb.V1.User

  rpc :CreateUser, Google.Cloud.Alloydb.V1.CreateUserRequest, Google.Cloud.Alloydb.V1.User

  rpc :UpdateUser, Google.Cloud.Alloydb.V1.UpdateUserRequest, Google.Cloud.Alloydb.V1.User

  rpc :DeleteUser, Google.Cloud.Alloydb.V1.DeleteUserRequest, Google.Protobuf.Empty

  rpc :ListDatabases,
      Google.Cloud.Alloydb.V1.ListDatabasesRequest,
      Google.Cloud.Alloydb.V1.ListDatabasesResponse
end

defmodule Google.Cloud.Alloydb.V1.AlloyDBAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Alloydb.V1.AlloyDBAdmin.Service
end
