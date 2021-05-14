defmodule Google.Cloud.Aiplatform.V1beta1.MachineSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_type: String.t(),
          accelerator_type: Google.Cloud.Aiplatform.V1beta1.AcceleratorType.t(),
          accelerator_count: integer
        }

  defstruct [:machine_type, :accelerator_type, :accelerator_count]

  field :machine_type, 1, type: :string
  field :accelerator_type, 2, type: Google.Cloud.Aiplatform.V1beta1.AcceleratorType, enum: true
  field :accelerator_count, 3, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.DedicatedResources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_spec: Google.Cloud.Aiplatform.V1beta1.MachineSpec.t() | nil,
          min_replica_count: integer,
          max_replica_count: integer,
          autoscaling_metric_specs: [Google.Cloud.Aiplatform.V1beta1.AutoscalingMetricSpec.t()]
        }

  defstruct [:machine_spec, :min_replica_count, :max_replica_count, :autoscaling_metric_specs]

  field :machine_spec, 1, type: Google.Cloud.Aiplatform.V1beta1.MachineSpec
  field :min_replica_count, 2, type: :int32
  field :max_replica_count, 3, type: :int32

  field :autoscaling_metric_specs, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.AutoscalingMetricSpec
end

defmodule Google.Cloud.Aiplatform.V1beta1.AutomaticResources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_replica_count: integer,
          max_replica_count: integer
        }

  defstruct [:min_replica_count, :max_replica_count]

  field :min_replica_count, 1, type: :int32
  field :max_replica_count, 2, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchDedicatedResources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_spec: Google.Cloud.Aiplatform.V1beta1.MachineSpec.t() | nil,
          starting_replica_count: integer,
          max_replica_count: integer
        }

  defstruct [:machine_spec, :starting_replica_count, :max_replica_count]

  field :machine_spec, 1, type: Google.Cloud.Aiplatform.V1beta1.MachineSpec
  field :starting_replica_count, 2, type: :int32
  field :max_replica_count, 3, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.ResourcesConsumed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replica_hours: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:replica_hours]

  field :replica_hours, 1, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.DiskSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          boot_disk_type: String.t(),
          boot_disk_size_gb: integer
        }

  defstruct [:boot_disk_type, :boot_disk_size_gb]

  field :boot_disk_type, 1, type: :string
  field :boot_disk_size_gb, 2, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.AutoscalingMetricSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_name: String.t(),
          target: integer
        }

  defstruct [:metric_name, :target]

  field :metric_name, 1, type: :string
  field :target, 2, type: :int32
end
