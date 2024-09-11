defmodule Google.Bigtable.Admin.V2.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_NOT_KNOWN, 0
  field :READY, 1
  field :CREATING, 2
end

defmodule Google.Bigtable.Admin.V2.Instance.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PRODUCTION, 1
  field :DEVELOPMENT, 2
end

defmodule Google.Bigtable.Admin.V2.Cluster.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_NOT_KNOWN, 0
  field :READY, 1
  field :CREATING, 2
  field :RESIZING, 3
  field :DISABLED, 4
end

defmodule Google.Bigtable.Admin.V2.AppProfile.Priority do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PRIORITY_UNSPECIFIED, 0
  field :PRIORITY_LOW, 1
  field :PRIORITY_MEDIUM, 2
  field :PRIORITY_HIGH, 3
end

defmodule Google.Bigtable.Admin.V2.AppProfile.DataBoostIsolationReadOnly.ComputeBillingOwner do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COMPUTE_BILLING_OWNER_UNSPECIFIED, 0
  field :HOST_PAYS, 1
end

defmodule Google.Bigtable.Admin.V2.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Bigtable.Admin.V2.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :state, 3, type: Google.Bigtable.Admin.V2.Instance.State, enum: true
  field :type, 4, type: Google.Bigtable.Admin.V2.Instance.Type, enum: true
  field :labels, 5, repeated: true, type: Google.Bigtable.Admin.V2.Instance.LabelsEntry, map: true

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :satisfies_pzs, 8,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzs",
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.AutoscalingTargets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cpu_utilization_percent, 2, type: :int32, json_name: "cpuUtilizationPercent"

  field :storage_utilization_gib_per_node, 3,
    type: :int32,
    json_name: "storageUtilizationGibPerNode"
end

defmodule Google.Bigtable.Admin.V2.AutoscalingLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_serve_nodes, 1, type: :int32, json_name: "minServeNodes", deprecated: false
  field :max_serve_nodes, 2, type: :int32, json_name: "maxServeNodes", deprecated: false
end

defmodule Google.Bigtable.Admin.V2.Cluster.ClusterAutoscalingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :autoscaling_limits, 1,
    type: Google.Bigtable.Admin.V2.AutoscalingLimits,
    json_name: "autoscalingLimits",
    deprecated: false

  field :autoscaling_targets, 2,
    type: Google.Bigtable.Admin.V2.AutoscalingTargets,
    json_name: "autoscalingTargets",
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.Cluster.ClusterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cluster_autoscaling_config, 1,
    type: Google.Bigtable.Admin.V2.Cluster.ClusterAutoscalingConfig,
    json_name: "clusterAutoscalingConfig"
end

defmodule Google.Bigtable.Admin.V2.Cluster.EncryptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName", deprecated: false
end

defmodule Google.Bigtable.Admin.V2.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :config, 0

  field :name, 1, type: :string
  field :location, 2, type: :string, deprecated: false
  field :state, 3, type: Google.Bigtable.Admin.V2.Cluster.State, enum: true, deprecated: false
  field :serve_nodes, 4, type: :int32, json_name: "serveNodes"

  field :cluster_config, 7,
    type: Google.Bigtable.Admin.V2.Cluster.ClusterConfig,
    json_name: "clusterConfig",
    oneof: 0

  field :default_storage_type, 5,
    type: Google.Bigtable.Admin.V2.StorageType,
    json_name: "defaultStorageType",
    enum: true,
    deprecated: false

  field :encryption_config, 6,
    type: Google.Bigtable.Admin.V2.Cluster.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.AppProfile.MultiClusterRoutingUseAny.RowAffinity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.AppProfile.MultiClusterRoutingUseAny do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :affinity, 0

  field :cluster_ids, 1, repeated: true, type: :string, json_name: "clusterIds"

  field :row_affinity, 3,
    type: Google.Bigtable.Admin.V2.AppProfile.MultiClusterRoutingUseAny.RowAffinity,
    json_name: "rowAffinity",
    oneof: 0
end

defmodule Google.Bigtable.Admin.V2.AppProfile.SingleClusterRouting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cluster_id, 1, type: :string, json_name: "clusterId"
  field :allow_transactional_writes, 2, type: :bool, json_name: "allowTransactionalWrites"
end

defmodule Google.Bigtable.Admin.V2.AppProfile.StandardIsolation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :priority, 1, type: Google.Bigtable.Admin.V2.AppProfile.Priority, enum: true
end

defmodule Google.Bigtable.Admin.V2.AppProfile.DataBoostIsolationReadOnly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :compute_billing_owner, 1,
    proto3_optional: true,
    type: Google.Bigtable.Admin.V2.AppProfile.DataBoostIsolationReadOnly.ComputeBillingOwner,
    json_name: "computeBillingOwner",
    enum: true
end

defmodule Google.Bigtable.Admin.V2.AppProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :routing_policy, 0

  oneof :isolation, 1

  field :name, 1, type: :string
  field :etag, 2, type: :string
  field :description, 3, type: :string

  field :multi_cluster_routing_use_any, 5,
    type: Google.Bigtable.Admin.V2.AppProfile.MultiClusterRoutingUseAny,
    json_name: "multiClusterRoutingUseAny",
    oneof: 0

  field :single_cluster_routing, 6,
    type: Google.Bigtable.Admin.V2.AppProfile.SingleClusterRouting,
    json_name: "singleClusterRouting",
    oneof: 0

  field :priority, 7,
    type: Google.Bigtable.Admin.V2.AppProfile.Priority,
    enum: true,
    oneof: 1,
    deprecated: true

  field :standard_isolation, 11,
    type: Google.Bigtable.Admin.V2.AppProfile.StandardIsolation,
    json_name: "standardIsolation",
    oneof: 1

  field :data_boost_isolation_read_only, 10,
    type: Google.Bigtable.Admin.V2.AppProfile.DataBoostIsolationReadOnly,
    json_name: "dataBoostIsolationReadOnly",
    oneof: 1
end

defmodule Google.Bigtable.Admin.V2.HotTablet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :table_name, 2, type: :string, json_name: "tableName", deprecated: false
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :start_key, 5, type: :string, json_name: "startKey"
  field :end_key, 6, type: :string, json_name: "endKey"

  field :node_cpu_usage_percent, 7,
    type: :float,
    json_name: "nodeCpuUsagePercent",
    deprecated: false
end