defmodule Google.Cloud.Gkemulticloud.V1.NodeTaint.Effect do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :EFFECT_UNSPECIFIED | :NO_SCHEDULE | :PREFER_NO_SCHEDULE | :NO_EXECUTE

  field :EFFECT_UNSPECIFIED, 0
  field :NO_SCHEDULE, 1
  field :PREFER_NO_SCHEDULE, 2
  field :NO_EXECUTE, 3
end
defmodule Google.Cloud.Gkemulticloud.V1.LoggingComponentConfig.Component do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :COMPONENT_UNSPECIFIED | :SYSTEM_COMPONENTS | :WORKLOADS

  field :COMPONENT_UNSPECIFIED, 0
  field :SYSTEM_COMPONENTS, 1
  field :WORKLOADS, 2
end
defmodule Google.Cloud.Gkemulticloud.V1.WorkloadIdentityConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issuer_uri: String.t(),
          workload_pool: String.t(),
          identity_provider: String.t()
        }

  defstruct issuer_uri: "",
            workload_pool: "",
            identity_provider: ""

  field :issuer_uri, 1, type: :string, json_name: "issuerUri"
  field :workload_pool, 2, type: :string, json_name: "workloadPool"
  field :identity_provider, 3, type: :string, json_name: "identityProvider"
end
defmodule Google.Cloud.Gkemulticloud.V1.MaxPodsConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_pods_per_node: integer
        }

  defstruct max_pods_per_node: 0

  field :max_pods_per_node, 1, type: :int64, json_name: "maxPodsPerNode", deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          status_detail: String.t(),
          error_detail: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            status_detail: "",
            error_detail: ""

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :status_detail, 4, type: :string, json_name: "statusDetail", deprecated: false
  field :error_detail, 5, type: :string, json_name: "errorDetail", deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.NodeTaint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t(),
          effect: Google.Cloud.Gkemulticloud.V1.NodeTaint.Effect.t()
        }

  defstruct key: "",
            value: "",
            effect: :EFFECT_UNSPECIFIED

  field :key, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false

  field :effect, 3,
    type: Google.Cloud.Gkemulticloud.V1.NodeTaint.Effect,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.Fleet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          membership: String.t()
        }

  defstruct project: "",
            membership: ""

  field :project, 1, type: :string, deprecated: false
  field :membership, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.LoggingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          component_config: Google.Cloud.Gkemulticloud.V1.LoggingComponentConfig.t() | nil
        }

  defstruct component_config: nil

  field :component_config, 1,
    type: Google.Cloud.Gkemulticloud.V1.LoggingComponentConfig,
    json_name: "componentConfig"
end
defmodule Google.Cloud.Gkemulticloud.V1.LoggingComponentConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_components: [Google.Cloud.Gkemulticloud.V1.LoggingComponentConfig.Component.t()]
        }

  defstruct enable_components: []

  field :enable_components, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.LoggingComponentConfig.Component,
    json_name: "enableComponents",
    enum: true
end
