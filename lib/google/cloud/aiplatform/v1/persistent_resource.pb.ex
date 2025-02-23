defmodule Google.Cloud.Aiplatform.V1.PersistentResource.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 3
  field :STOPPING, 4
  field :ERROR, 5
  field :REBOOTING, 6
  field :UPDATING, 7
end

defmodule Google.Cloud.Aiplatform.V1.PersistentResource.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.PersistentResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :resource_pools, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ResourcePool,
    json_name: "resourcePools",
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Aiplatform.V1.PersistentResource.State,
    enum: true,
    deprecated: false

  field :error, 6, type: Google.Rpc.Status, deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PersistentResource.LabelsEntry,
    map: true,
    deprecated: false

  field :network, 11, type: :string, deprecated: false

  field :encryption_spec, 12,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec",
    deprecated: false

  field :resource_runtime_spec, 13,
    type: Google.Cloud.Aiplatform.V1.ResourceRuntimeSpec,
    json_name: "resourceRuntimeSpec",
    deprecated: false

  field :resource_runtime, 14,
    type: Google.Cloud.Aiplatform.V1.ResourceRuntime,
    json_name: "resourceRuntime",
    deprecated: false

  field :reserved_ip_ranges, 15,
    repeated: true,
    type: :string,
    json_name: "reservedIpRanges",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ResourcePool.AutoscalingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :min_replica_count, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "minReplicaCount",
    deprecated: false

  field :max_replica_count, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "maxReplicaCount",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ResourcePool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :machine_spec, 2,
    type: Google.Cloud.Aiplatform.V1.MachineSpec,
    json_name: "machineSpec",
    deprecated: false

  field :replica_count, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "replicaCount",
    deprecated: false

  field :disk_spec, 4,
    type: Google.Cloud.Aiplatform.V1.DiskSpec,
    json_name: "diskSpec",
    deprecated: false

  field :used_replica_count, 6, type: :int64, json_name: "usedReplicaCount", deprecated: false

  field :autoscaling_spec, 7,
    type: Google.Cloud.Aiplatform.V1.ResourcePool.AutoscalingSpec,
    json_name: "autoscalingSpec",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ResourceRuntimeSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_account_spec, 2,
    type: Google.Cloud.Aiplatform.V1.ServiceAccountSpec,
    json_name: "serviceAccountSpec",
    deprecated: false

  field :ray_spec, 1,
    type: Google.Cloud.Aiplatform.V1.RaySpec,
    json_name: "raySpec",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RaySpec.ResourcePoolImagesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.RaySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :image_uri, 1, type: :string, json_name: "imageUri", deprecated: false

  field :resource_pool_images, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.RaySpec.ResourcePoolImagesEntry,
    json_name: "resourcePoolImages",
    map: true,
    deprecated: false

  field :head_node_resource_pool_id, 7,
    type: :string,
    json_name: "headNodeResourcePoolId",
    deprecated: false

  field :ray_metric_spec, 8,
    type: Google.Cloud.Aiplatform.V1.RayMetricSpec,
    json_name: "rayMetricSpec",
    deprecated: false

  field :ray_logs_spec, 10,
    type: Google.Cloud.Aiplatform.V1.RayLogsSpec,
    json_name: "rayLogsSpec",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ResourceRuntime.AccessUrisEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ResourceRuntime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :access_uris, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ResourceRuntime.AccessUrisEntry,
    json_name: "accessUris",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ServiceAccountSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable_custom_service_account, 1,
    type: :bool,
    json_name: "enableCustomServiceAccount",
    deprecated: false

  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RayMetricSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :disabled, 1, type: :bool, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RayLogsSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :disabled, 1, type: :bool, deprecated: false
end
