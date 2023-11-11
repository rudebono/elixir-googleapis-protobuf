defmodule Google.Cloud.Aiplatform.V1.MachineSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false

  field :accelerator_type, 2,
    type: Google.Cloud.Aiplatform.V1.AcceleratorType,
    json_name: "acceleratorType",
    enum: true,
    deprecated: false

  field :accelerator_count, 3, type: :int32, json_name: "acceleratorCount"
  field :tpu_topology, 4, type: :string, json_name: "tpuTopology", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DedicatedResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :machine_spec, 1,
    type: Google.Cloud.Aiplatform.V1.MachineSpec,
    json_name: "machineSpec",
    deprecated: false

  field :min_replica_count, 2, type: :int32, json_name: "minReplicaCount", deprecated: false
  field :max_replica_count, 3, type: :int32, json_name: "maxReplicaCount", deprecated: false

  field :autoscaling_metric_specs, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.AutoscalingMetricSpec,
    json_name: "autoscalingMetricSpecs",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.AutomaticResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_replica_count, 1, type: :int32, json_name: "minReplicaCount", deprecated: false
  field :max_replica_count, 2, type: :int32, json_name: "maxReplicaCount", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.BatchDedicatedResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :machine_spec, 1,
    type: Google.Cloud.Aiplatform.V1.MachineSpec,
    json_name: "machineSpec",
    deprecated: false

  field :starting_replica_count, 2,
    type: :int32,
    json_name: "startingReplicaCount",
    deprecated: false

  field :max_replica_count, 3, type: :int32, json_name: "maxReplicaCount", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ResourcesConsumed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :replica_hours, 1, type: :double, json_name: "replicaHours", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DiskSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :boot_disk_type, 1, type: :string, json_name: "bootDiskType"
  field :boot_disk_size_gb, 2, type: :int32, json_name: "bootDiskSizeGb"
end

defmodule Google.Cloud.Aiplatform.V1.PersistentDiskSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :disk_type, 1, type: :string, json_name: "diskType"
  field :disk_size_gb, 2, type: :int64, json_name: "diskSizeGb"
end

defmodule Google.Cloud.Aiplatform.V1.NfsMount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :server, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :mount_point, 3, type: :string, json_name: "mountPoint", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.AutoscalingMetricSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName", deprecated: false
  field :target, 2, type: :int32
end