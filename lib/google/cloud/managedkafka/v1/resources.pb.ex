defmodule Google.Cloud.Managedkafka.V1.Cluster.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
end

defmodule Google.Cloud.Managedkafka.V1.RebalanceConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :NO_REBALANCE, 1
  field :AUTO_REBALANCE_ON_SCALE_UP, 2
end

defmodule Google.Cloud.Managedkafka.V1.Cluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Managedkafka.V1.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Managedkafka.V1.CapacityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vcpu_count, 1, type: :int64, json_name: "vcpuCount", deprecated: false
  field :memory_bytes, 2, type: :int64, json_name: "memoryBytes", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.RebalanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Managedkafka.V1.RebalanceConfig.Mode,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :subnet, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.AccessConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network_configs, 1,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.NetworkConfig,
    json_name: "networkConfigs",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.GcpConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :access_config, 3,
    type: Google.Cloud.Managedkafka.V1.AccessConfig,
    json_name: "accessConfig",
    deprecated: false

  field :kms_key, 2, type: :string, json_name: "kmsKey", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.Topic.ConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Managedkafka.V1.Topic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: Google.Cloud.Managedkafka.V1.ConsumerPartitionMetadata
end

defmodule Google.Cloud.Managedkafka.V1.ConsumerTopicMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :partitions, 1,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.ConsumerTopicMetadata.PartitionsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ConsumerPartitionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :offset, 1, type: :int64, deprecated: false
  field :metadata, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ConsumerGroup.TopicsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Managedkafka.V1.ConsumerTopicMetadata
end

defmodule Google.Cloud.Managedkafka.V1.ConsumerGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :topics, 2,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.ConsumerGroup.TopicsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.OperationMetadata do
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