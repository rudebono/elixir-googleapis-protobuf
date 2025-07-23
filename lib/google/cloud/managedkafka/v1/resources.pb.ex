defmodule Google.Cloud.Managedkafka.V1.Cluster.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
end

defmodule Google.Cloud.Managedkafka.V1.RebalanceConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :NO_REBALANCE, 1
  field :AUTO_REBALANCE_ON_SCALE_UP, 2
end

defmodule Google.Cloud.Managedkafka.V1.ConnectCluster.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
end

defmodule Google.Cloud.Managedkafka.V1.Connector.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :UNASSIGNED, 1
  field :RUNNING, 2
  field :PAUSED, 3
  field :FAILED, 4
  field :RESTARTING, 5
  field :STOPPED, 6
end

defmodule Google.Cloud.Managedkafka.V1.Cluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Managedkafka.V1.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :platform_config, 0

  field :gcp_config, 9,
    type: Google.Cloud.Managedkafka.V1.GcpConfig,
    json_name: "gcpConfig",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.Cluster.LabelsEntry,
    map: true,
    deprecated: false

  field :capacity_config, 5,
    type: Google.Cloud.Managedkafka.V1.CapacityConfig,
    json_name: "capacityConfig",
    deprecated: false

  field :rebalance_config, 8,
    type: Google.Cloud.Managedkafka.V1.RebalanceConfig,
    json_name: "rebalanceConfig",
    deprecated: false

  field :state, 10,
    type: Google.Cloud.Managedkafka.V1.Cluster.State,
    enum: true,
    deprecated: false

  field :satisfies_pzi, 11,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzi",
    deprecated: false

  field :satisfies_pzs, 12,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzs",
    deprecated: false

  field :tls_config, 13,
    type: Google.Cloud.Managedkafka.V1.TlsConfig,
    json_name: "tlsConfig",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.CapacityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vcpu_count, 1, type: :int64, json_name: "vcpuCount", deprecated: false
  field :memory_bytes, 2, type: :int64, json_name: "memoryBytes", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.RebalanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Managedkafka.V1.RebalanceConfig.Mode,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subnet, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.AccessConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network_configs, 1,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.NetworkConfig,
    json_name: "networkConfigs",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.GcpConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_config, 3,
    type: Google.Cloud.Managedkafka.V1.AccessConfig,
    json_name: "accessConfig",
    deprecated: false

  field :kms_key, 2, type: :string, json_name: "kmsKey", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.TlsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :trust_config, 1,
    type: Google.Cloud.Managedkafka.V1.TrustConfig,
    json_name: "trustConfig",
    deprecated: false

  field :ssl_principal_mapping_rules, 2,
    type: :string,
    json_name: "sslPrincipalMappingRules",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.TrustConfig.CertificateAuthorityServiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ca_pool, 1, type: :string, json_name: "caPool", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.TrustConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cas_configs, 1,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.TrustConfig.CertificateAuthorityServiceConfig,
    json_name: "casConfigs",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.Topic.ConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Managedkafka.V1.Topic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :partition_count, 2, type: :int32, json_name: "partitionCount", deprecated: false
  field :replication_factor, 3, type: :int32, json_name: "replicationFactor", deprecated: false

  field :configs, 4,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.Topic.ConfigsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ConsumerTopicMetadata.PartitionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: Google.Cloud.Managedkafka.V1.ConsumerPartitionMetadata
end

defmodule Google.Cloud.Managedkafka.V1.ConsumerTopicMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partitions, 1,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.ConsumerTopicMetadata.PartitionsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ConsumerPartitionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :offset, 1, type: :int64, deprecated: false
  field :metadata, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ConsumerGroup.TopicsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Managedkafka.V1.ConsumerTopicMetadata
end

defmodule Google.Cloud.Managedkafka.V1.ConsumerGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :topics, 2,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.ConsumerGroup.TopicsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Cloud.Managedkafka.V1.ConnectCluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Managedkafka.V1.ConnectCluster.ConfigEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Managedkafka.V1.ConnectCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :platform_config, 0

  field :gcp_config, 7,
    type: Google.Cloud.Managedkafka.V1.ConnectGcpConfig,
    json_name: "gcpConfig",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :kafka_cluster, 2, type: :string, json_name: "kafkaCluster", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.ConnectCluster.LabelsEntry,
    map: true,
    deprecated: false

  field :capacity_config, 6,
    type: Google.Cloud.Managedkafka.V1.CapacityConfig,
    json_name: "capacityConfig",
    deprecated: false

  field :state, 8,
    type: Google.Cloud.Managedkafka.V1.ConnectCluster.State,
    enum: true,
    deprecated: false

  field :config, 9,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.ConnectCluster.ConfigEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ConnectNetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :primary_subnet, 3, type: :string, json_name: "primarySubnet", deprecated: false

  field :additional_subnets, 4,
    repeated: true,
    type: :string,
    json_name: "additionalSubnets",
    deprecated: false

  field :dns_domain_names, 2,
    repeated: true,
    type: :string,
    json_name: "dnsDomainNames",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ConnectAccessConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network_configs, 1,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.ConnectNetworkConfig,
    json_name: "networkConfigs",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ConnectGcpConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_config, 1,
    type: Google.Cloud.Managedkafka.V1.ConnectAccessConfig,
    json_name: "accessConfig",
    deprecated: false

  field :secret_paths, 2,
    repeated: true,
    type: :string,
    json_name: "secretPaths",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.Connector.ConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Managedkafka.V1.Connector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :restart_policy, 0

  field :task_restart_policy, 4,
    type: Google.Cloud.Managedkafka.V1.TaskRetryPolicy,
    json_name: "taskRestartPolicy",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :configs, 2,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.Connector.ConfigsEntry,
    map: true,
    deprecated: false

  field :state, 3,
    type: Google.Cloud.Managedkafka.V1.Connector.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.TaskRetryPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :minimum_backoff, 1,
    type: Google.Protobuf.Duration,
    json_name: "minimumBackoff",
    deprecated: false

  field :maximum_backoff, 2,
    type: Google.Protobuf.Duration,
    json_name: "maximumBackoff",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.Acl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :acl_entries, 2,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.AclEntry,
    json_name: "aclEntries",
    deprecated: false

  field :etag, 3, type: :string, deprecated: false
  field :resource_type, 4, type: :string, json_name: "resourceType", deprecated: false
  field :resource_name, 5, type: :string, json_name: "resourceName", deprecated: false
  field :pattern_type, 6, type: :string, json_name: "patternType", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.AclEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :principal, 4, type: :string, deprecated: false
  field :permission_type, 5, type: :string, json_name: "permissionType", deprecated: false
  field :operation, 6, type: :string, deprecated: false
  field :host, 7, type: :string, deprecated: false
end
