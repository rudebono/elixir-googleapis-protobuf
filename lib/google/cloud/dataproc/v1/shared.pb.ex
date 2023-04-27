defmodule Google.Cloud.Dataproc.V1.Component do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COMPONENT_UNSPECIFIED, 0
  field :ANACONDA, 5
  field :DOCKER, 13
  field :DRUID, 9
  field :FLINK, 14
  field :HBASE, 11
  field :HIVE_WEBHCAT, 3
  field :HUDI, 18
  field :JUPYTER, 1
  field :PRESTO, 6
  field :TRINO, 17
  field :RANGER, 12
  field :SOLR, 10
  field :ZEPPELIN, 4
  field :ZOOKEEPER, 8
end

defmodule Google.Cloud.Dataproc.V1.FailureAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FAILURE_ACTION_UNSPECIFIED, 0
  field :NO_ACTION, 1
  field :DELETE, 2
end

defmodule Google.Cloud.Dataproc.V1.GkeNodePoolTarget.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :CONTROLLER, 2
  field :SPARK_DRIVER, 3
  field :SPARK_EXECUTOR, 4
end

defmodule Google.Cloud.Dataproc.V1.RuntimeConfig.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.RuntimeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :string, deprecated: false
  field :container_image, 2, type: :string, json_name: "containerImage", deprecated: false

  field :properties, 3,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.RuntimeConfig.PropertiesEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.EnvironmentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :execution_config, 1,
    type: Google.Cloud.Dataproc.V1.ExecutionConfig,
    json_name: "executionConfig",
    deprecated: false

  field :peripherals_config, 2,
    type: Google.Cloud.Dataproc.V1.PeripheralsConfig,
    json_name: "peripheralsConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ExecutionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :network, 0

  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: false
  field :network_uri, 4, type: :string, json_name: "networkUri", oneof: 0, deprecated: false
  field :subnetwork_uri, 5, type: :string, json_name: "subnetworkUri", oneof: 0, deprecated: false

  field :network_tags, 6,
    repeated: true,
    type: :string,
    json_name: "networkTags",
    deprecated: false

  field :kms_key, 7, type: :string, json_name: "kmsKey", deprecated: false
  field :ttl, 9, type: Google.Protobuf.Duration, deprecated: false
  field :staging_bucket, 10, type: :string, json_name: "stagingBucket", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.SparkHistoryServerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataproc_cluster, 1, type: :string, json_name: "dataprocCluster", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.PeripheralsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metastore_service, 1, type: :string, json_name: "metastoreService", deprecated: false

  field :spark_history_server_config, 2,
    type: Google.Cloud.Dataproc.V1.SparkHistoryServerConfig,
    json_name: "sparkHistoryServerConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.RuntimeInfo.EndpointsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.RuntimeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :endpoints, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.RuntimeInfo.EndpointsEntry,
    map: true,
    deprecated: false

  field :output_uri, 2, type: :string, json_name: "outputUri", deprecated: false

  field :diagnostic_output_uri, 3,
    type: :string,
    json_name: "diagnosticOutputUri",
    deprecated: false

  field :approximate_usage, 6,
    type: Google.Cloud.Dataproc.V1.UsageMetrics,
    json_name: "approximateUsage",
    deprecated: false

  field :current_usage, 7,
    type: Google.Cloud.Dataproc.V1.UsageSnapshot,
    json_name: "currentUsage",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.UsageMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :milli_dcu_seconds, 1, type: :int64, json_name: "milliDcuSeconds", deprecated: false

  field :shuffle_storage_gb_seconds, 2,
    type: :int64,
    json_name: "shuffleStorageGbSeconds",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.UsageSnapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :milli_dcu, 1, type: :int64, json_name: "milliDcu", deprecated: false
  field :shuffle_storage_gb, 2, type: :int64, json_name: "shuffleStorageGb", deprecated: false

  field :snapshot_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "snapshotTime",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.GkeClusterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :gke_cluster_target, 2, type: :string, json_name: "gkeClusterTarget", deprecated: false

  field :node_pool_target, 3,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolTarget,
    json_name: "nodePoolTarget",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.KubernetesClusterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :config, 0

  field :kubernetes_namespace, 1,
    type: :string,
    json_name: "kubernetesNamespace",
    deprecated: false

  field :gke_cluster_config, 2,
    type: Google.Cloud.Dataproc.V1.GkeClusterConfig,
    json_name: "gkeClusterConfig",
    oneof: 0,
    deprecated: false

  field :kubernetes_software_config, 3,
    type: Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig,
    json_name: "kubernetesSoftwareConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig.ComponentVersionEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :component_version, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig.ComponentVersionEntry,
    json_name: "componentVersion",
    map: true

  field :properties, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig.PropertiesEntry,
    map: true
end

defmodule Google.Cloud.Dataproc.V1.GkeNodePoolTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :node_pool, 1, type: :string, json_name: "nodePool", deprecated: false

  field :roles, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolTarget.Role,
    enum: true,
    deprecated: false

  field :node_pool_config, 3,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolConfig,
    json_name: "nodePoolConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false
  field :local_ssd_count, 7, type: :int32, json_name: "localSsdCount", deprecated: false
  field :preemptible, 10, type: :bool, deprecated: false

  field :accelerators, 11,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodePoolAcceleratorConfig,
    deprecated: false

  field :min_cpu_platform, 13, type: :string, json_name: "minCpuPlatform", deprecated: false
  field :boot_disk_kms_key, 23, type: :string, json_name: "bootDiskKmsKey", deprecated: false
  field :spot, 32, type: :bool, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodePoolAcceleratorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :accelerator_count, 1, type: :int64, json_name: "acceleratorCount"
  field :accelerator_type, 2, type: :string, json_name: "acceleratorType"
  field :gpu_partition_size, 3, type: :string, json_name: "gpuPartitionSize"
end

defmodule Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodePoolAutoscalingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_node_count, 2, type: :int32, json_name: "minNodeCount"
  field :max_node_count, 3, type: :int32, json_name: "maxNodeCount"
end

defmodule Google.Cloud.Dataproc.V1.GkeNodePoolConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :config, 2,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodeConfig,
    deprecated: false

  field :locations, 13, repeated: true, type: :string, deprecated: false

  field :autoscaling, 4,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodePoolAutoscalingConfig,
    deprecated: false
end