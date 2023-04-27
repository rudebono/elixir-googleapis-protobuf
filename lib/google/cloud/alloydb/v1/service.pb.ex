defmodule Google.Cloud.Alloydb.V1.BatchCreateInstanceStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING_CREATE, 1
  field :READY, 2
  field :CREATING, 3
  field :DELETING, 4
  field :FAILED, 5
  field :ROLLED_BACK, 6
end

defmodule Google.Cloud.Alloydb.V1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Alloydb.V1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Alloydb.V1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Cloud.Alloydb.V1.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.RestoreClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :backup_source, 4,
    type: Google.Cloud.Alloydb.V1.BackupSource,
    json_name: "backupSource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Alloydb.V1.Cluster, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 6, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Alloydb.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Alloydb.V1.InstanceView, enum: true
end

defmodule Google.Cloud.Alloydb.V1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Alloydb.V1.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.CreateInstanceRequests do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_instance_requests, 1,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.CreateInstanceRequest,
    json_name: "createInstanceRequests",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.BatchCreateInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :requests, 2, type: Google.Cloud.Alloydb.V1.CreateInstanceRequests, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.BatchCreateInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Alloydb.V1.Instance
end

defmodule Google.Cloud.Alloydb.V1.BatchCreateInstancesMetadata.InstanceStatusesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Alloydb.V1.BatchCreateInstanceStatus
end

defmodule Google.Cloud.Alloydb.V1.BatchCreateInstancesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance_targets, 1, repeated: true, type: :string, json_name: "instanceTargets"

  field :instance_statuses, 2,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.BatchCreateInstancesMetadata.InstanceStatusesEntry,
    json_name: "instanceStatuses",
    map: true
end

defmodule Google.Cloud.Alloydb.V1.BatchCreateInstanceStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Alloydb.V1.BatchCreateInstanceStatus.State, enum: true
  field :error_msg, 2, type: :string, json_name: "errorMsg"
  field :error, 4, type: Google.Rpc.Status
  field :type, 3, type: Google.Cloud.Alloydb.V1.Instance.InstanceType, enum: true
end

defmodule Google.Cloud.Alloydb.V1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.FailoverInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.RestartInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Alloydb.V1.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Alloydb.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.CreateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :backup, 3, type: Google.Cloud.Alloydb.V1.Backup, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.ListSupportedDatabaseFlagsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Alloydb.V1.ListSupportedDatabaseFlagsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :supported_database_flags, 1,
    repeated: true,
    type: Google.Cloud.Alloydb.V1.SupportedDatabaseFlag,
    json_name: "supportedDatabaseFlags"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Alloydb.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :request_specific, 0

  field :batch_create_instances_metadata, 8,
    type: Google.Cloud.Alloydb.V1.BatchCreateInstancesMetadata,
    json_name: "batchCreateInstancesMetadata",
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

defmodule Google.Cloud.Alloydb.V1.AlloyDBAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.alloydb.v1.AlloyDBAdmin",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListClusters,
      Google.Cloud.Alloydb.V1.ListClustersRequest,
      Google.Cloud.Alloydb.V1.ListClustersResponse

  rpc :GetCluster, Google.Cloud.Alloydb.V1.GetClusterRequest, Google.Cloud.Alloydb.V1.Cluster

  rpc :CreateCluster, Google.Cloud.Alloydb.V1.CreateClusterRequest, Google.Longrunning.Operation

  rpc :UpdateCluster, Google.Cloud.Alloydb.V1.UpdateClusterRequest, Google.Longrunning.Operation

  rpc :DeleteCluster, Google.Cloud.Alloydb.V1.DeleteClusterRequest, Google.Longrunning.Operation

  rpc :RestoreCluster, Google.Cloud.Alloydb.V1.RestoreClusterRequest, Google.Longrunning.Operation

  rpc :ListInstances,
      Google.Cloud.Alloydb.V1.ListInstancesRequest,
      Google.Cloud.Alloydb.V1.ListInstancesResponse

  rpc :GetInstance, Google.Cloud.Alloydb.V1.GetInstanceRequest, Google.Cloud.Alloydb.V1.Instance

  rpc :CreateInstance, Google.Cloud.Alloydb.V1.CreateInstanceRequest, Google.Longrunning.Operation

  rpc :BatchCreateInstances,
      Google.Cloud.Alloydb.V1.BatchCreateInstancesRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance, Google.Cloud.Alloydb.V1.UpdateInstanceRequest, Google.Longrunning.Operation

  rpc :DeleteInstance, Google.Cloud.Alloydb.V1.DeleteInstanceRequest, Google.Longrunning.Operation

  rpc :FailoverInstance,
      Google.Cloud.Alloydb.V1.FailoverInstanceRequest,
      Google.Longrunning.Operation

  rpc :RestartInstance,
      Google.Cloud.Alloydb.V1.RestartInstanceRequest,
      Google.Longrunning.Operation

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
end

defmodule Google.Cloud.Alloydb.V1.AlloyDBAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Alloydb.V1.AlloyDBAdmin.Service
end