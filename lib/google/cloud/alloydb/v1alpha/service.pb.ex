defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.Status do
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

defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.Stage do
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

defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstanceStatus.State do
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

defmodule Google.Cloud.Alloydb.V1alpha.InjectFaultRequest.FaultType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FAULT_TYPE_UNSPECIFIED, 0
  field :STOP_VM, 1
end

defmodule Google.Cloud.Alloydb.V1alpha.ExecuteSqlMetadata.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :OK, 1
  field :PARTIAL, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Alloydb.V1alpha.PromoteClusterStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROMOTE_CLUSTER_AVAILABLE_FOR_READ, 1
  field :PROMOTE_CLUSTER_AVAILABLE_FOR_WRITE, 2
  field :PROMOTE_CLUSTER_COMPLETED, 3
end

defmodule Google.Cloud.Alloydb.V1alpha.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1alpha.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Alloydb.V1alpha.ClusterView, enum: true, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateSecondaryClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Alloydb.V1alpha.Cluster, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 6, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Alloydb.V1alpha.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Cloud.Alloydb.V1alpha.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.GcsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ExportClusterRequest.CsvExportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :select_query, 1, type: :string, json_name: "selectQuery", deprecated: false
  field :field_delimiter, 2, type: :string, json_name: "fieldDelimiter", deprecated: false
  field :quote_character, 3, type: :string, json_name: "quoteCharacter", deprecated: false
  field :escape_character, 4, type: :string, json_name: "escapeCharacter", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ExportClusterRequest.SqlExportOptions do
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

defmodule Google.Cloud.Alloydb.V1alpha.ExportClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  oneof :export_options, 1

  field :gcs_destination, 2,
    type: Google.Cloud.Alloydb.V1alpha.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false

  field :csv_export_options, 4,
    type: Google.Cloud.Alloydb.V1alpha.ExportClusterRequest.CsvExportOptions,
    json_name: "csvExportOptions",
    oneof: 1

  field :sql_export_options, 5,
    type: Google.Cloud.Alloydb.V1alpha.ExportClusterRequest.SqlExportOptions,
    json_name: "sqlExportOptions",
    oneof: 1

  field :name, 1, type: :string, deprecated: false
  field :database, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ExportClusterResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 2,
    type: Google.Cloud.Alloydb.V1alpha.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ImportClusterRequest.SqlImportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Alloydb.V1alpha.ImportClusterRequest.CsvImportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table, 1, type: :string, deprecated: false
  field :columns, 2, repeated: true, type: :string, deprecated: false
  field :field_delimiter, 3, type: :string, json_name: "fieldDelimiter", deprecated: false
  field :quote_character, 4, type: :string, json_name: "quoteCharacter", deprecated: false
  field :escape_character, 5, type: :string, json_name: "escapeCharacter", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ImportClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :import_options, 0

  field :sql_import_options, 4,
    type: Google.Cloud.Alloydb.V1alpha.ImportClusterRequest.SqlImportOptions,
    json_name: "sqlImportOptions",
    oneof: 0

  field :csv_import_options, 7,
    type: Google.Cloud.Alloydb.V1alpha.ImportClusterRequest.CsvImportOptions,
    json_name: "csvImportOptions",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :gcs_uri, 2, type: :string, json_name: "gcsUri", deprecated: false
  field :database, 3, type: :string, deprecated: false
  field :user, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ImportClusterResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bytes_downloaded, 1, type: :int64, json_name: "bytesDownloaded", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :version, 2,
    type: Google.Cloud.Alloydb.V1alpha.DatabaseVersion,
    enum: true,
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.StageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stage, 1, type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.Stage, enum: true
  field :status, 2, type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.Status, enum: true
  field :logs_url, 3, type: :string, json_name: "logsUrl"
end

defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.InstanceUpgradeDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :upgrade_status, 2,
    type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.Status,
    json_name: "upgradeStatus",
    enum: true

  field :instance_type, 3,
    type: Google.Cloud.Alloydb.V1alpha.Instance.InstanceType,
    json_name: "instanceType",
    enum: true
end

defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.ClusterUpgradeDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :upgrade_status, 2,
    type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.Status,
    json_name: "upgradeStatus",
    enum: true

  field :cluster_type, 3,
    type: Google.Cloud.Alloydb.V1alpha.Cluster.ClusterType,
    json_name: "clusterType",
    enum: true

  field :database_version, 4,
    type: Google.Cloud.Alloydb.V1alpha.DatabaseVersion,
    json_name: "databaseVersion",
    enum: true

  field :stage_info, 5,
    repeated: true,
    type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.StageInfo,
    json_name: "stageInfo"

  field :instance_upgrade_details, 6,
    repeated: true,
    type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.InstanceUpgradeDetails,
    json_name: "instanceUpgradeDetails"
end

defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.Status, enum: true
  field :message, 2, type: :string

  field :cluster_upgrade_details, 3,
    repeated: true,
    type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.ClusterUpgradeDetails,
    json_name: "clusterUpgradeDetails"
end

defmodule Google.Cloud.Alloydb.V1alpha.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.SwitchoverClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.PromoteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.RestoreClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :backup_source, 4,
    type: Google.Cloud.Alloydb.V1alpha.BackupSource,
    json_name: "backupSource",
    oneof: 0

  field :continuous_backup_source, 8,
    type: Google.Cloud.Alloydb.V1alpha.ContinuousBackupSource,
    json_name: "continuousBackupSource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Alloydb.V1alpha.Cluster, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 6, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1alpha.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Alloydb.V1alpha.InstanceView, enum: true
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Alloydb.V1alpha.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateSecondaryInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Alloydb.V1alpha.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateInstanceRequests do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_instance_requests, 1,
    repeated: true,
    type: Google.Cloud.Alloydb.V1alpha.CreateInstanceRequest,
    json_name: "createInstanceRequests",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :requests, 2, type: Google.Cloud.Alloydb.V1alpha.CreateInstanceRequests, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.Instance
end

defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesMetadata.InstanceStatusesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Alloydb.V1alpha.BatchCreateInstanceStatus
end

defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance_targets, 1, repeated: true, type: :string, json_name: "instanceTargets"

  field :instance_statuses, 2,
    repeated: true,
    type: Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesMetadata.InstanceStatusesEntry,
    json_name: "instanceStatuses",
    map: true
end

defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstanceStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Alloydb.V1alpha.BatchCreateInstanceStatus.State, enum: true
  field :error_msg, 2, type: :string, json_name: "errorMsg"
  field :error, 4, type: Google.Rpc.Status
  field :type, 3, type: Google.Cloud.Alloydb.V1alpha.Instance.InstanceType, enum: true
end

defmodule Google.Cloud.Alloydb.V1alpha.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Alloydb.V1alpha.Instance, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.FailoverInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.InjectFaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fault_type, 1,
    type: Google.Cloud.Alloydb.V1alpha.InjectFaultRequest.FaultType,
    json_name: "faultType",
    enum: true,
    deprecated: false

  field :name, 2, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.RestartInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :node_ids, 4, repeated: true, type: :string, json_name: "nodeIds", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ExecuteSqlRequest do
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

defmodule Google.Cloud.Alloydb.V1alpha.ExecuteSqlResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sql_results, 1,
    repeated: true,
    type: Google.Cloud.Alloydb.V1alpha.SqlResult,
    json_name: "sqlResults"

  field :metadata, 3, type: Google.Cloud.Alloydb.V1alpha.ExecuteSqlMetadata
end

defmodule Google.Cloud.Alloydb.V1alpha.ExecuteSqlMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string
  field :partial_result, 2, type: :bool, json_name: "partialResult"

  field :sql_statement_execution_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "sqlStatementExecutionDuration"

  field :status, 4, type: Google.Cloud.Alloydb.V1alpha.ExecuteSqlMetadata.Status, enum: true
end

defmodule Google.Cloud.Alloydb.V1alpha.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Alloydb.V1alpha.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1alpha.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :backup, 3, type: Google.Cloud.Alloydb.V1alpha.Backup, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :backup, 2, type: Google.Cloud.Alloydb.V1alpha.Backup, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListSupportedDatabaseFlagsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :scope, 6,
    type: Google.Cloud.Alloydb.V1alpha.SupportedDatabaseFlag.Scope,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListSupportedDatabaseFlagsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :supported_database_flags, 1,
    repeated: true,
    type: Google.Cloud.Alloydb.V1alpha.SupportedDatabaseFlag,
    json_name: "supportedDatabaseFlags"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Alloydb.V1alpha.GenerateClientCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :pem_csr, 3, type: :string, json_name: "pemCsr", deprecated: true

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

defmodule Google.Cloud.Alloydb.V1alpha.GenerateClientCertificateResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pem_certificate, 1, type: :string, json_name: "pemCertificate", deprecated: true

  field :pem_certificate_chain, 2,
    repeated: true,
    type: :string,
    json_name: "pemCertificateChain",
    deprecated: false

  field :ca_cert, 3, type: :string, json_name: "caCert", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.GetConnectionInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :request_specific, 0

  field :batch_create_instances_metadata, 8,
    type: Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesMetadata,
    json_name: "batchCreateInstancesMetadata",
    oneof: 0,
    deprecated: false

  field :promote_cluster_status, 9,
    type: Google.Cloud.Alloydb.V1alpha.PromoteClusterStatus,
    json_name: "promoteClusterStatus",
    oneof: 0,
    deprecated: false

  field :upgrade_cluster_status, 10,
    type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterStatus,
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

defmodule Google.Cloud.Alloydb.V1alpha.PromoteClusterStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Alloydb.V1alpha.PromoteClusterStatus.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterStatus.StageStatus.StageSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :estimated_start_time, 1, type: Google.Protobuf.Timestamp, json_name: "estimatedStartTime"
  field :actual_start_time, 2, type: Google.Protobuf.Timestamp, json_name: "actualStartTime"
  field :estimated_end_time, 3, type: Google.Protobuf.Timestamp, json_name: "estimatedEndTime"
  field :actual_end_time, 4, type: Google.Protobuf.Timestamp, json_name: "actualEndTime"
end

defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterStatus.StageStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :stage_specific_status, 0

  field :read_pool_instances_upgrade, 11,
    type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterStatus.ReadPoolInstancesUpgradeStageStatus,
    json_name: "readPoolInstancesUpgrade",
    oneof: 0

  field :stage, 1, type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.Stage, enum: true
  field :state, 2, type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.Status, enum: true

  field :schedule, 3,
    type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterStatus.StageStatus.StageSchedule,
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterStatus.ReadPoolInstancesUpgradeStageStatus.Stats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :not_started, 1, type: :int32, json_name: "notStarted"
  field :ongoing, 2, type: :int32
  field :success, 3, type: :int32
  field :failed, 4, type: :int32
end

defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterStatus.ReadPoolInstancesUpgradeStageStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :upgrade_stats, 1,
    type:
      Google.Cloud.Alloydb.V1alpha.UpgradeClusterStatus.ReadPoolInstancesUpgradeStageStatus.Stats,
    json_name: "upgradeStats"
end

defmodule Google.Cloud.Alloydb.V1alpha.UpgradeClusterStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterResponse.Status, enum: true
  field :cancellable, 2, type: :bool

  field :source_version, 3,
    type: Google.Cloud.Alloydb.V1alpha.DatabaseVersion,
    json_name: "sourceVersion",
    enum: true

  field :target_version, 4,
    type: Google.Cloud.Alloydb.V1alpha.DatabaseVersion,
    json_name: "targetVersion",
    enum: true

  field :stages, 5,
    repeated: true,
    type: Google.Cloud.Alloydb.V1alpha.UpgradeClusterStatus.StageStatus
end

defmodule Google.Cloud.Alloydb.V1alpha.ListUsersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListUsersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :users, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.User
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1alpha.GetUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :user_id, 2, type: :string, json_name: "userId", deprecated: false
  field :user, 3, type: Google.Cloud.Alloydb.V1alpha.User, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.UpdateUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :user, 2, type: Google.Cloud.Alloydb.V1alpha.User, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.DeleteUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListDatabasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListDatabasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :databases, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.Database
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :database_id, 2, type: :string, json_name: "databaseId", deprecated: false
  field :database, 3, type: Google.Cloud.Alloydb.V1alpha.Database, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.AlloyDBAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.alloydb.v1alpha.AlloyDBAdmin",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListClusters,
      Google.Cloud.Alloydb.V1alpha.ListClustersRequest,
      Google.Cloud.Alloydb.V1alpha.ListClustersResponse

  rpc :GetCluster,
      Google.Cloud.Alloydb.V1alpha.GetClusterRequest,
      Google.Cloud.Alloydb.V1alpha.Cluster

  rpc :CreateCluster,
      Google.Cloud.Alloydb.V1alpha.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateCluster,
      Google.Cloud.Alloydb.V1alpha.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :ExportCluster,
      Google.Cloud.Alloydb.V1alpha.ExportClusterRequest,
      Google.Longrunning.Operation

  rpc :ImportCluster,
      Google.Cloud.Alloydb.V1alpha.ImportClusterRequest,
      Google.Longrunning.Operation

  rpc :UpgradeCluster,
      Google.Cloud.Alloydb.V1alpha.UpgradeClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Cloud.Alloydb.V1alpha.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :PromoteCluster,
      Google.Cloud.Alloydb.V1alpha.PromoteClusterRequest,
      Google.Longrunning.Operation

  rpc :SwitchoverCluster,
      Google.Cloud.Alloydb.V1alpha.SwitchoverClusterRequest,
      Google.Longrunning.Operation

  rpc :RestoreCluster,
      Google.Cloud.Alloydb.V1alpha.RestoreClusterRequest,
      Google.Longrunning.Operation

  rpc :CreateSecondaryCluster,
      Google.Cloud.Alloydb.V1alpha.CreateSecondaryClusterRequest,
      Google.Longrunning.Operation

  rpc :ListInstances,
      Google.Cloud.Alloydb.V1alpha.ListInstancesRequest,
      Google.Cloud.Alloydb.V1alpha.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Alloydb.V1alpha.GetInstanceRequest,
      Google.Cloud.Alloydb.V1alpha.Instance

  rpc :CreateInstance,
      Google.Cloud.Alloydb.V1alpha.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :CreateSecondaryInstance,
      Google.Cloud.Alloydb.V1alpha.CreateSecondaryInstanceRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateInstances,
      Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Alloydb.V1alpha.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Alloydb.V1alpha.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :FailoverInstance,
      Google.Cloud.Alloydb.V1alpha.FailoverInstanceRequest,
      Google.Longrunning.Operation

  rpc :InjectFault, Google.Cloud.Alloydb.V1alpha.InjectFaultRequest, Google.Longrunning.Operation

  rpc :RestartInstance,
      Google.Cloud.Alloydb.V1alpha.RestartInstanceRequest,
      Google.Longrunning.Operation

  rpc :ExecuteSql,
      Google.Cloud.Alloydb.V1alpha.ExecuteSqlRequest,
      Google.Cloud.Alloydb.V1alpha.ExecuteSqlResponse

  rpc :ListBackups,
      Google.Cloud.Alloydb.V1alpha.ListBackupsRequest,
      Google.Cloud.Alloydb.V1alpha.ListBackupsResponse

  rpc :GetBackup,
      Google.Cloud.Alloydb.V1alpha.GetBackupRequest,
      Google.Cloud.Alloydb.V1alpha.Backup

  rpc :CreateBackup,
      Google.Cloud.Alloydb.V1alpha.CreateBackupRequest,
      Google.Longrunning.Operation

  rpc :UpdateBackup,
      Google.Cloud.Alloydb.V1alpha.UpdateBackupRequest,
      Google.Longrunning.Operation

  rpc :DeleteBackup,
      Google.Cloud.Alloydb.V1alpha.DeleteBackupRequest,
      Google.Longrunning.Operation

  rpc :ListSupportedDatabaseFlags,
      Google.Cloud.Alloydb.V1alpha.ListSupportedDatabaseFlagsRequest,
      Google.Cloud.Alloydb.V1alpha.ListSupportedDatabaseFlagsResponse

  rpc :GenerateClientCertificate,
      Google.Cloud.Alloydb.V1alpha.GenerateClientCertificateRequest,
      Google.Cloud.Alloydb.V1alpha.GenerateClientCertificateResponse

  rpc :GetConnectionInfo,
      Google.Cloud.Alloydb.V1alpha.GetConnectionInfoRequest,
      Google.Cloud.Alloydb.V1alpha.ConnectionInfo

  rpc :ListUsers,
      Google.Cloud.Alloydb.V1alpha.ListUsersRequest,
      Google.Cloud.Alloydb.V1alpha.ListUsersResponse

  rpc :GetUser, Google.Cloud.Alloydb.V1alpha.GetUserRequest, Google.Cloud.Alloydb.V1alpha.User

  rpc :CreateUser,
      Google.Cloud.Alloydb.V1alpha.CreateUserRequest,
      Google.Cloud.Alloydb.V1alpha.User

  rpc :UpdateUser,
      Google.Cloud.Alloydb.V1alpha.UpdateUserRequest,
      Google.Cloud.Alloydb.V1alpha.User

  rpc :DeleteUser, Google.Cloud.Alloydb.V1alpha.DeleteUserRequest, Google.Protobuf.Empty

  rpc :ListDatabases,
      Google.Cloud.Alloydb.V1alpha.ListDatabasesRequest,
      Google.Cloud.Alloydb.V1alpha.ListDatabasesResponse

  rpc :CreateDatabase,
      Google.Cloud.Alloydb.V1alpha.CreateDatabaseRequest,
      Google.Cloud.Alloydb.V1alpha.Database
end

defmodule Google.Cloud.Alloydb.V1alpha.AlloyDBAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Alloydb.V1alpha.AlloyDBAdmin.Service
end
