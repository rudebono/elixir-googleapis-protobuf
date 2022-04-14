defmodule Google.Cloud.Aiplatform.V1.MachineSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_type: String.t(),
          accelerator_type: Google.Cloud.Aiplatform.V1.AcceleratorType.t(),
          accelerator_count: integer
        }

  defstruct machine_type: "",
            accelerator_type: :ACCELERATOR_TYPE_UNSPECIFIED,
            accelerator_count: 0

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false

  field :accelerator_type, 2,
    type: Google.Cloud.Aiplatform.V1.AcceleratorType,
    json_name: "acceleratorType",
    enum: true,
    deprecated: false

  field :accelerator_count, 3, type: :int32, json_name: "acceleratorCount"
end
defmodule Google.Cloud.Aiplatform.V1.DedicatedResources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_spec: Google.Cloud.Aiplatform.V1.MachineSpec.t() | nil,
          min_replica_count: integer,
          max_replica_count: integer,
          autoscaling_metric_specs: [Google.Cloud.Aiplatform.V1.AutoscalingMetricSpec.t()]
        }

  defstruct machine_spec: nil,
            min_replica_count: 0,
            max_replica_count: 0,
            autoscaling_metric_specs: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_replica_count: integer,
          max_replica_count: integer
        }

  defstruct min_replica_count: 0,
            max_replica_count: 0

  field :min_replica_count, 1, type: :int32, json_name: "minReplicaCount", deprecated: false
  field :max_replica_count, 2, type: :int32, json_name: "maxReplicaCount", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.BatchDedicatedResources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_spec: Google.Cloud.Aiplatform.V1.MachineSpec.t() | nil,
          starting_replica_count: integer,
          max_replica_count: integer
        }

  defstruct machine_spec: nil,
            starting_replica_count: 0,
            max_replica_count: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replica_hours: float | :infinity | :negative_infinity | :nan
        }

  defstruct replica_hours: 0.0

  field :replica_hours, 1, type: :double, json_name: "replicaHours", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.DiskSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          boot_disk_type: String.t(),
          boot_disk_size_gb: integer
        }

  defstruct boot_disk_type: "",
            boot_disk_size_gb: 0

  field :boot_disk_type, 1, type: :string, json_name: "bootDiskType"
  field :boot_disk_size_gb, 2, type: :int32, json_name: "bootDiskSizeGb"
end
defmodule Google.Cloud.Aiplatform.V1.NfsMount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          server: String.t(),
          path: String.t(),
          mount_point: String.t()
        }

  defstruct server: "",
            path: "",
            mount_point: ""

  field :server, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :mount_point, 3, type: :string, json_name: "mountPoint", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.AutoscalingMetricSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_name: String.t(),
          target: integer
        }

  defstruct metric_name: "",
            target: 0

  field :metric_name, 1, type: :string, json_name: "metricName", deprecated: false
  field :target, 2, type: :int32
end
