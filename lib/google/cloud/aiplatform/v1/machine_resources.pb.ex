defmodule Google.Cloud.Aiplatform.V1.MachineSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_type: String.t(),
          accelerator_type: Google.Cloud.Aiplatform.V1.AcceleratorType.t(),
          accelerator_count: integer
        }

  defstruct [:machine_type, :accelerator_type, :accelerator_count]

  field :machine_type, 1, type: :string, json_name: "machineType"

  field :accelerator_type, 2,
    type: Google.Cloud.Aiplatform.V1.AcceleratorType,
    enum: true,
    json_name: "acceleratorType"

  field :accelerator_count, 3, type: :int32, json_name: "acceleratorCount"

  def transform_module(), do: nil
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

  defstruct [:machine_spec, :min_replica_count, :max_replica_count, :autoscaling_metric_specs]

  field :machine_spec, 1, type: Google.Cloud.Aiplatform.V1.MachineSpec, json_name: "machineSpec"
  field :min_replica_count, 2, type: :int32, json_name: "minReplicaCount"
  field :max_replica_count, 3, type: :int32, json_name: "maxReplicaCount"

  field :autoscaling_metric_specs, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.AutoscalingMetricSpec,
    json_name: "autoscalingMetricSpecs"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.AutomaticResources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_replica_count: integer,
          max_replica_count: integer
        }

  defstruct [:min_replica_count, :max_replica_count]

  field :min_replica_count, 1, type: :int32, json_name: "minReplicaCount"
  field :max_replica_count, 2, type: :int32, json_name: "maxReplicaCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.BatchDedicatedResources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_spec: Google.Cloud.Aiplatform.V1.MachineSpec.t() | nil,
          starting_replica_count: integer,
          max_replica_count: integer
        }

  defstruct [:machine_spec, :starting_replica_count, :max_replica_count]

  field :machine_spec, 1, type: Google.Cloud.Aiplatform.V1.MachineSpec, json_name: "machineSpec"
  field :starting_replica_count, 2, type: :int32, json_name: "startingReplicaCount"
  field :max_replica_count, 3, type: :int32, json_name: "maxReplicaCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ResourcesConsumed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replica_hours: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:replica_hours]

  field :replica_hours, 1, type: :double, json_name: "replicaHours"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.DiskSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          boot_disk_type: String.t(),
          boot_disk_size_gb: integer
        }

  defstruct [:boot_disk_type, :boot_disk_size_gb]

  field :boot_disk_type, 1, type: :string, json_name: "bootDiskType"
  field :boot_disk_size_gb, 2, type: :int32, json_name: "bootDiskSizeGb"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.AutoscalingMetricSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_name: String.t(),
          target: integer
        }

  defstruct [:metric_name, :target]

  field :metric_name, 1, type: :string, json_name: "metricName"
  field :target, 2, type: :int32

  def transform_module(), do: nil
end
