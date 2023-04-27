defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstanceStatus.State do
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

defmodule Google.Cloud.Alloydb.V1alpha.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1alpha.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateSecondaryClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Alloydb.V1alpha.Cluster, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 6, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Alloydb.V1alpha.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Cloud.Alloydb.V1alpha.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.PromoteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.RestoreClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1alpha.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Alloydb.V1alpha.InstanceView, enum: true
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Alloydb.V1alpha.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateSecondaryInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Alloydb.V1alpha.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateInstanceRequests do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_instance_requests, 1,
    repeated: true,
    type: Google.Cloud.Alloydb.V1alpha.CreateInstanceRequest,
    json_name: "createInstanceRequests",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :requests, 2, type: Google.Cloud.Alloydb.V1alpha.CreateInstanceRequests, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.Instance
end

defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesMetadata.InstanceStatusesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Alloydb.V1alpha.BatchCreateInstanceStatus
end

defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance_targets, 1, repeated: true, type: :string, json_name: "instanceTargets"

  field :instance_statuses, 2,
    repeated: true,
    type: Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesMetadata.InstanceStatusesEntry,
    json_name: "instanceStatuses",
    map: true
end

defmodule Google.Cloud.Alloydb.V1alpha.BatchCreateInstanceStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Alloydb.V1alpha.BatchCreateInstanceStatus.State, enum: true
  field :error_msg, 2, type: :string, json_name: "errorMsg"
  field :error, 4, type: Google.Rpc.Status
  field :type, 3, type: Google.Cloud.Alloydb.V1alpha.Instance.InstanceType, enum: true
end

defmodule Google.Cloud.Alloydb.V1alpha.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.FailoverInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.RestartInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Alloydb.V1alpha.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Alloydb.V1alpha.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.CreateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :backup, 3, type: Google.Cloud.Alloydb.V1alpha.Backup, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.ListSupportedDatabaseFlagsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Alloydb.V1alpha.ListSupportedDatabaseFlagsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :supported_database_flags, 1,
    repeated: true,
    type: Google.Cloud.Alloydb.V1alpha.SupportedDatabaseFlag,
    json_name: "supportedDatabaseFlags"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Alloydb.V1alpha.GenerateClientCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :pem_csr, 3, type: :string, json_name: "pemCsr", deprecated: false

  field :cert_duration, 4,
    type: Google.Protobuf.Duration,
    json_name: "certDuration",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.GenerateClientCertificateResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :pem_certificate, 1, type: :string, json_name: "pemCertificate", deprecated: false

  field :pem_certificate_chain, 2,
    repeated: true,
    type: :string,
    json_name: "pemCertificateChain",
    deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.GetConnectionInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Alloydb.V1alpha.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :request_specific, 0

  field :batch_create_instances_metadata, 8,
    type: Google.Cloud.Alloydb.V1alpha.BatchCreateInstancesMetadata,
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

defmodule Google.Cloud.Alloydb.V1alpha.AlloyDBAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.alloydb.v1alpha.AlloyDBAdmin",
    protoc_gen_elixir_version: "0.12.0"

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

  rpc :DeleteCluster,
      Google.Cloud.Alloydb.V1alpha.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :PromoteCluster,
      Google.Cloud.Alloydb.V1alpha.PromoteClusterRequest,
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

  rpc :RestartInstance,
      Google.Cloud.Alloydb.V1alpha.RestartInstanceRequest,
      Google.Longrunning.Operation

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
end

defmodule Google.Cloud.Alloydb.V1alpha.AlloyDBAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Alloydb.V1alpha.AlloyDBAdmin.Service
end