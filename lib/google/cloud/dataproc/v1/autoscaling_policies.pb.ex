defmodule Google.Cloud.Dataproc.V1.AutoscalingPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          algorithm: {atom, any},
          id: String.t(),
          name: String.t(),
          worker_config: Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig.t() | nil,
          secondary_worker_config:
            Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig.t() | nil
        }

  defstruct [:algorithm, :id, :name, :worker_config, :secondary_worker_config]

  oneof :algorithm, 0
  field :id, 1, type: :string
  field :name, 2, type: :string
  field :basic_algorithm, 3, type: Google.Cloud.Dataproc.V1.BasicAutoscalingAlgorithm, oneof: 0
  field :worker_config, 4, type: Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig

  field :secondary_worker_config, 5,
    type: Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig
end

defmodule Google.Cloud.Dataproc.V1.BasicAutoscalingAlgorithm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          yarn_config: Google.Cloud.Dataproc.V1.BasicYarnAutoscalingConfig.t() | nil,
          cooldown_period: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:yarn_config, :cooldown_period]

  field :yarn_config, 1, type: Google.Cloud.Dataproc.V1.BasicYarnAutoscalingConfig
  field :cooldown_period, 2, type: Google.Protobuf.Duration
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

  defstruct [
    :graceful_decommission_timeout,
    :scale_up_factor,
    :scale_down_factor,
    :scale_up_min_worker_fraction,
    :scale_down_min_worker_fraction
  ]

  field :graceful_decommission_timeout, 5, type: Google.Protobuf.Duration
  field :scale_up_factor, 1, type: :double
  field :scale_down_factor, 2, type: :double
  field :scale_up_min_worker_fraction, 3, type: :double
  field :scale_down_min_worker_fraction, 4, type: :double
end

defmodule Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_instances: integer,
          max_instances: integer,
          weight: integer
        }

  defstruct [:min_instances, :max_instances, :weight]

  field :min_instances, 1, type: :int32
  field :max_instances, 2, type: :int32
  field :weight, 3, type: :int32
end

defmodule Google.Cloud.Dataproc.V1.CreateAutoscalingPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          policy: Google.Cloud.Dataproc.V1.AutoscalingPolicy.t() | nil
        }

  defstruct [:parent, :policy]

  field :parent, 1, type: :string
  field :policy, 2, type: Google.Cloud.Dataproc.V1.AutoscalingPolicy
end

defmodule Google.Cloud.Dataproc.V1.GetAutoscalingPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dataproc.V1.UpdateAutoscalingPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy: Google.Cloud.Dataproc.V1.AutoscalingPolicy.t() | nil
        }

  defstruct [:policy]

  field :policy, 1, type: Google.Cloud.Dataproc.V1.AutoscalingPolicy
end

defmodule Google.Cloud.Dataproc.V1.DeleteAutoscalingPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dataproc.V1.ListAutoscalingPoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dataproc.V1.ListAutoscalingPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policies: [Google.Cloud.Dataproc.V1.AutoscalingPolicy.t()],
          next_page_token: String.t()
        }

  defstruct [:policies, :next_page_token]

  field :policies, 1, repeated: true, type: Google.Cloud.Dataproc.V1.AutoscalingPolicy
  field :next_page_token, 2, type: :string
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
