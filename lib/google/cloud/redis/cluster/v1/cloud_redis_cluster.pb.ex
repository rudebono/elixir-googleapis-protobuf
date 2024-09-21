defmodule Google.Cloud.Redis.Cluster.V1.AuthorizationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :AUTH_MODE_UNSPECIFIED, 0
  field :AUTH_MODE_IAM_AUTH, 1
  field :AUTH_MODE_DISABLED, 2
end

defmodule Google.Cloud.Redis.Cluster.V1.NodeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :NODE_TYPE_UNSPECIFIED, 0
  field :REDIS_SHARED_CORE_NANO, 1
  field :REDIS_HIGHMEM_MEDIUM, 2
  field :REDIS_HIGHMEM_XLARGE, 3
  field :REDIS_STANDARD_SMALL, 4
end

defmodule Google.Cloud.Redis.Cluster.V1.TransitEncryptionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TRANSIT_ENCRYPTION_MODE_UNSPECIFIED, 0
  field :TRANSIT_ENCRYPTION_MODE_DISABLED, 1
  field :TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION, 2
end

defmodule Google.Cloud.Redis.Cluster.V1.Cluster.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig.PersistenceMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PERSISTENCE_MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :RDB, 2
  field :AOF, 3
end

defmodule Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig.RDBConfig.SnapshotPeriod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SNAPSHOT_PERIOD_UNSPECIFIED, 0
  field :ONE_HOUR, 1
  field :SIX_HOURS, 2
  field :TWELVE_HOURS, 3
  field :TWENTY_FOUR_HOURS, 4
end

defmodule Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig.AOFConfig.AppendFsync do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :APPEND_FSYNC_UNSPECIFIED, 0
  field :NO, 1
  field :EVERYSEC, 2
  field :ALWAYS, 3
end

defmodule Google.Cloud.Redis.Cluster.V1.ZoneDistributionConfig.ZoneDistributionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ZONE_DISTRIBUTION_MODE_UNSPECIFIED, 0
  field :MULTI_ZONE, 1
  field :SINGLE_ZONE, 2
end

defmodule Google.Cloud.Redis.Cluster.V1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Redis.Cluster.V1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Redis.Cluster.V1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Redis.Cluster.V1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Redis.Cluster.V1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Redis.Cluster.V1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Cloud.Redis.Cluster.V1.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Redis.Cluster.V1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Redis.Cluster.V1.GetClusterCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1.Cluster.StateInfo.UpdateInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target_shard_count, 1, proto3_optional: true, type: :int32, json_name: "targetShardCount"

  field :target_replica_count, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "targetReplicaCount"
end

defmodule Google.Cloud.Redis.Cluster.V1.Cluster.StateInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :info, 0

  field :update_info, 1,
    type: Google.Cloud.Redis.Cluster.V1.Cluster.StateInfo.UpdateInfo,
    json_name: "updateInfo",
    oneof: 0
end

defmodule Google.Cloud.Redis.Cluster.V1.Cluster.RedisConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Redis.Cluster.V1.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Redis.Cluster.V1.Cluster.State,
    enum: true,
    deprecated: false

  field :uid, 5, type: :string, deprecated: false

  field :replica_count, 8,
    proto3_optional: true,
    type: :int32,
    json_name: "replicaCount",
    deprecated: false

  field :authorization_mode, 11,
    type: Google.Cloud.Redis.Cluster.V1.AuthorizationMode,
    json_name: "authorizationMode",
    enum: true,
    deprecated: false

  field :transit_encryption_mode, 12,
    type: Google.Cloud.Redis.Cluster.V1.TransitEncryptionMode,
    json_name: "transitEncryptionMode",
    enum: true,
    deprecated: false

  field :size_gb, 13, proto3_optional: true, type: :int32, json_name: "sizeGb", deprecated: false

  field :shard_count, 14,
    proto3_optional: true,
    type: :int32,
    json_name: "shardCount",
    deprecated: false

  field :psc_configs, 15,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1.PscConfig,
    json_name: "pscConfigs",
    deprecated: false

  field :discovery_endpoints, 16,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1.DiscoveryEndpoint,
    json_name: "discoveryEndpoints",
    deprecated: false

  field :psc_connections, 17,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1.PscConnection,
    json_name: "pscConnections",
    deprecated: false

  field :state_info, 18,
    type: Google.Cloud.Redis.Cluster.V1.Cluster.StateInfo,
    json_name: "stateInfo",
    deprecated: false

  field :node_type, 19,
    type: Google.Cloud.Redis.Cluster.V1.NodeType,
    json_name: "nodeType",
    enum: true,
    deprecated: false

  field :persistence_config, 20,
    type: Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig,
    json_name: "persistenceConfig",
    deprecated: false

  field :redis_configs, 21,
    repeated: true,
    type: Google.Cloud.Redis.Cluster.V1.Cluster.RedisConfigsEntry,
    json_name: "redisConfigs",
    map: true,
    deprecated: false

  field :precise_size_gb, 22,
    proto3_optional: true,
    type: :double,
    json_name: "preciseSizeGb",
    deprecated: false

  field :zone_distribution_config, 23,
    type: Google.Cloud.Redis.Cluster.V1.ZoneDistributionConfig,
    json_name: "zoneDistributionConfig",
    deprecated: false

  field :deletion_protection_enabled, 25,
    proto3_optional: true,
    type: :bool,
    json_name: "deletionProtectionEnabled",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1.PscConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :network, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1.DiscoveryEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :address, 1, type: :string, deprecated: false
  field :port, 2, type: :int32, deprecated: false

  field :psc_config, 3,
    type: Google.Cloud.Redis.Cluster.V1.PscConfig,
    json_name: "pscConfig",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1.PscConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :psc_connection_id, 1, type: :string, json_name: "pscConnectionId", deprecated: false
  field :address, 2, type: :string, deprecated: false
  field :forwarding_rule, 3, type: :string, json_name: "forwardingRule", deprecated: false
  field :project_id, 4, type: :string, json_name: "projectId", deprecated: false
  field :network, 5, type: :string
end

defmodule Google.Cloud.Redis.Cluster.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

defmodule Google.Cloud.Redis.Cluster.V1.CertificateAuthority.ManagedCertificateAuthority.CertChain do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :certificates, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Redis.Cluster.V1.CertificateAuthority.ManagedCertificateAuthority do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ca_certs, 1,
    repeated: true,
    type:
      Google.Cloud.Redis.Cluster.V1.CertificateAuthority.ManagedCertificateAuthority.CertChain,
    json_name: "caCerts"
end

defmodule Google.Cloud.Redis.Cluster.V1.CertificateAuthority do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :server_ca, 0

  field :managed_server_ca, 1,
    type: Google.Cloud.Redis.Cluster.V1.CertificateAuthority.ManagedCertificateAuthority,
    json_name: "managedServerCa",
    oneof: 0

  field :name, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig.RDBConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :rdb_snapshot_period, 1,
    type: Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig.RDBConfig.SnapshotPeriod,
    json_name: "rdbSnapshotPeriod",
    enum: true,
    deprecated: false

  field :rdb_snapshot_start_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "rdbSnapshotStartTime",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig.AOFConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :append_fsync, 1,
    type: Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig.AOFConfig.AppendFsync,
    json_name: "appendFsync",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig.PersistenceMode,
    enum: true,
    deprecated: false

  field :rdb_config, 2,
    type: Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig.RDBConfig,
    json_name: "rdbConfig",
    deprecated: false

  field :aof_config, 3,
    type: Google.Cloud.Redis.Cluster.V1.ClusterPersistenceConfig.AOFConfig,
    json_name: "aofConfig",
    deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1.ZoneDistributionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Redis.Cluster.V1.ZoneDistributionConfig.ZoneDistributionMode,
    enum: true,
    deprecated: false

  field :zone, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Redis.Cluster.V1.CloudRedisCluster.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.redis.cluster.v1.CloudRedisCluster",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListClusters,
      Google.Cloud.Redis.Cluster.V1.ListClustersRequest,
      Google.Cloud.Redis.Cluster.V1.ListClustersResponse

  rpc :GetCluster,
      Google.Cloud.Redis.Cluster.V1.GetClusterRequest,
      Google.Cloud.Redis.Cluster.V1.Cluster

  rpc :UpdateCluster,
      Google.Cloud.Redis.Cluster.V1.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Cloud.Redis.Cluster.V1.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :CreateCluster,
      Google.Cloud.Redis.Cluster.V1.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :GetClusterCertificateAuthority,
      Google.Cloud.Redis.Cluster.V1.GetClusterCertificateAuthorityRequest,
      Google.Cloud.Redis.Cluster.V1.CertificateAuthority
end

defmodule Google.Cloud.Redis.Cluster.V1.CloudRedisCluster.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Redis.Cluster.V1.CloudRedisCluster.Service
end