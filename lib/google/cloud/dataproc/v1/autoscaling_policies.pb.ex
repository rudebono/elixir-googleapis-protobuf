defmodule Google.Cloud.Dataproc.V1.AutoscalingPolicy.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.AutoscalingPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          algorithm:
            {:basic_algorithm, Google.Cloud.Dataproc.V1.BasicAutoscalingAlgorithm.t() | nil},
          id: String.t(),
          name: String.t(),
          worker_config: Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig.t() | nil,
          secondary_worker_config:
            Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct algorithm: nil,
            id: "",
            name: "",
            worker_config: nil,
            secondary_worker_config: nil,
            labels: %{}

  oneof :algorithm, 0

  field :id, 1, type: :string
  field :name, 2, type: :string, deprecated: false

  field :basic_algorithm, 3,
    type: Google.Cloud.Dataproc.V1.BasicAutoscalingAlgorithm,
    json_name: "basicAlgorithm",
    oneof: 0,
    deprecated: false

  field :worker_config, 4,
    type: Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig,
    json_name: "workerConfig",
    deprecated: false

  field :secondary_worker_config, 5,
    type: Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig,
    json_name: "secondaryWorkerConfig",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.AutoscalingPolicy.LabelsEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.BasicAutoscalingAlgorithm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: {:yarn_config, Google.Cloud.Dataproc.V1.BasicYarnAutoscalingConfig.t() | nil},
          cooldown_period: Google.Protobuf.Duration.t() | nil
        }

  defstruct config: nil,
            cooldown_period: nil

  oneof :config, 0

  field :yarn_config, 1,
    type: Google.Cloud.Dataproc.V1.BasicYarnAutoscalingConfig,
    json_name: "yarnConfig",
    oneof: 0,
    deprecated: false

  field :cooldown_period, 2,
    type: Google.Protobuf.Duration,
    json_name: "cooldownPeriod",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.BasicYarnAutoscalingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          graceful_decommission_timeout: Google.Protobuf.Duration.t() | nil,
          scale_up_factor: float | :infinity | :negative_infinity | :nan,
          scale_down_factor: float | :infinity | :negative_infinity | :nan,
          scale_up_min_worker_fraction: float | :infinity | :negative_infinity | :nan,
          scale_down_min_worker_fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct graceful_decommission_timeout: nil,
            scale_up_factor: 0.0,
            scale_down_factor: 0.0,
            scale_up_min_worker_fraction: 0.0,
            scale_down_min_worker_fraction: 0.0

  field :graceful_decommission_timeout, 5,
    type: Google.Protobuf.Duration,
    json_name: "gracefulDecommissionTimeout",
    deprecated: false

  field :scale_up_factor, 1, type: :double, json_name: "scaleUpFactor", deprecated: false
  field :scale_down_factor, 2, type: :double, json_name: "scaleDownFactor", deprecated: false

  field :scale_up_min_worker_fraction, 3,
    type: :double,
    json_name: "scaleUpMinWorkerFraction",
    deprecated: false

  field :scale_down_min_worker_fraction, 4,
    type: :double,
    json_name: "scaleDownMinWorkerFraction",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_instances: integer,
          max_instances: integer,
          weight: integer
        }

  defstruct min_instances: 0,
            max_instances: 0,
            weight: 0

  field :min_instances, 1, type: :int32, json_name: "minInstances", deprecated: false
  field :max_instances, 2, type: :int32, json_name: "maxInstances", deprecated: false
  field :weight, 3, type: :int32, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.CreateAutoscalingPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          policy: Google.Cloud.Dataproc.V1.AutoscalingPolicy.t() | nil
        }

  defstruct parent: "",
            policy: nil

  field :parent, 1, type: :string, deprecated: false
  field :policy, 2, type: Google.Cloud.Dataproc.V1.AutoscalingPolicy, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.GetAutoscalingPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.UpdateAutoscalingPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy: Google.Cloud.Dataproc.V1.AutoscalingPolicy.t() | nil
        }

  defstruct policy: nil

  field :policy, 1, type: Google.Cloud.Dataproc.V1.AutoscalingPolicy, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.DeleteAutoscalingPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ListAutoscalingPoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ListAutoscalingPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policies: [Google.Cloud.Dataproc.V1.AutoscalingPolicy.t()],
          next_page_token: String.t()
        }

  defstruct policies: [],
            next_page_token: ""

  field :policies, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.AutoscalingPolicy,
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.AutoscalingPolicyService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dataproc.v1.AutoscalingPolicyService"

  rpc :CreateAutoscalingPolicy,
      Google.Cloud.Dataproc.V1.CreateAutoscalingPolicyRequest,
      Google.Cloud.Dataproc.V1.AutoscalingPolicy

  rpc :UpdateAutoscalingPolicy,
      Google.Cloud.Dataproc.V1.UpdateAutoscalingPolicyRequest,
      Google.Cloud.Dataproc.V1.AutoscalingPolicy

  rpc :GetAutoscalingPolicy,
      Google.Cloud.Dataproc.V1.GetAutoscalingPolicyRequest,
      Google.Cloud.Dataproc.V1.AutoscalingPolicy

  rpc :ListAutoscalingPolicies,
      Google.Cloud.Dataproc.V1.ListAutoscalingPoliciesRequest,
      Google.Cloud.Dataproc.V1.ListAutoscalingPoliciesResponse

  rpc :DeleteAutoscalingPolicy,
      Google.Cloud.Dataproc.V1.DeleteAutoscalingPolicyRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dataproc.V1.AutoscalingPolicyService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dataproc.V1.AutoscalingPolicyService.Service
end
