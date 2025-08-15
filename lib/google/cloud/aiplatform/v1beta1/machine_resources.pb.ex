defmodule Google.Cloud.Aiplatform.V1beta1.MachineSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false

  field :accelerator_type, 2,
    type: Google.Cloud.Aiplatform.V1beta1.AcceleratorType,
    json_name: "acceleratorType",
    enum: true,
    deprecated: false

  field :accelerator_count, 3, type: :int32, json_name: "acceleratorCount"
  field :gpu_partition_size, 7, type: :string, json_name: "gpuPartitionSize", deprecated: false
  field :tpu_topology, 4, type: :string, json_name: "tpuTopology", deprecated: false

  field :multihost_gpu_node_count, 6,
    type: :int32,
    json_name: "multihostGpuNodeCount",
    deprecated: false

  field :reservation_affinity, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ReservationAffinity,
    json_name: "reservationAffinity",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DedicatedResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :machine_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.MachineSpec,
    json_name: "machineSpec",
    deprecated: false

  field :min_replica_count, 2, type: :int32, json_name: "minReplicaCount", deprecated: false
  field :max_replica_count, 3, type: :int32, json_name: "maxReplicaCount", deprecated: false

  field :required_replica_count, 9,
    type: :int32,
    json_name: "requiredReplicaCount",
    deprecated: false

  field :autoscaling_metric_specs, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.AutoscalingMetricSpec,
    json_name: "autoscalingMetricSpecs",
    deprecated: false

  field :spot, 5, type: :bool, deprecated: false

  field :flex_start, 10,
    type: Google.Cloud.Aiplatform.V1beta1.FlexStart,
    json_name: "flexStart",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AutomaticResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_replica_count, 1, type: :int32, json_name: "minReplicaCount", deprecated: false
  field :max_replica_count, 2, type: :int32, json_name: "maxReplicaCount", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchDedicatedResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :machine_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.MachineSpec,
    json_name: "machineSpec",
    deprecated: false

  field :starting_replica_count, 2,
    type: :int32,
    json_name: "startingReplicaCount",
    deprecated: false

  field :max_replica_count, 3, type: :int32, json_name: "maxReplicaCount", deprecated: false

  field :flex_start, 4,
    type: Google.Cloud.Aiplatform.V1beta1.FlexStart,
    json_name: "flexStart",
    deprecated: false

  field :spot, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ResourcesConsumed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :replica_hours, 1, type: :double, json_name: "replicaHours", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DiskSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :boot_disk_type, 1, type: :string, json_name: "bootDiskType"
  field :boot_disk_size_gb, 2, type: :int32, json_name: "bootDiskSizeGb"
end

defmodule Google.Cloud.Aiplatform.V1beta1.PersistentDiskSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disk_type, 1, type: :string, json_name: "diskType"
  field :disk_size_gb, 2, type: :int64, json_name: "diskSizeGb"
end

defmodule Google.Cloud.Aiplatform.V1beta1.NfsMount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :server, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :mount_point, 3, type: :string, json_name: "mountPoint", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AutoscalingMetricSpec.MonitoredResourceLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.AutoscalingMetricSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName", deprecated: false
  field :target, 2, type: :int32

  field :monitored_resource_labels, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.AutoscalingMetricSpec.MonitoredResourceLabelsEntry,
    json_name: "monitoredResourceLabels",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ShieldedVmConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_secure_boot, 1, type: :bool, json_name: "enableSecureBoot"
end

defmodule Google.Cloud.Aiplatform.V1beta1.FlexStart do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_runtime_duration, 1, type: Google.Protobuf.Duration, json_name: "maxRuntimeDuration"
end
