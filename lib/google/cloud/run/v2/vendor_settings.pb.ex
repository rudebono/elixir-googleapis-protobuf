defmodule Google.Cloud.Run.V2.IngressTraffic do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INGRESS_TRAFFIC_UNSPECIFIED
          | :INGRESS_TRAFFIC_ALL
          | :INGRESS_TRAFFIC_INTERNAL_ONLY
          | :INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER

  field :INGRESS_TRAFFIC_UNSPECIFIED, 0
  field :INGRESS_TRAFFIC_ALL, 1
  field :INGRESS_TRAFFIC_INTERNAL_ONLY, 2
  field :INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER, 3
end
defmodule Google.Cloud.Run.V2.ExecutionEnvironment do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :EXECUTION_ENVIRONMENT_UNSPECIFIED
          | :EXECUTION_ENVIRONMENT_GEN1
          | :EXECUTION_ENVIRONMENT_GEN2

  field :EXECUTION_ENVIRONMENT_UNSPECIFIED, 0
  field :EXECUTION_ENVIRONMENT_GEN1, 1
  field :EXECUTION_ENVIRONMENT_GEN2, 2
end
defmodule Google.Cloud.Run.V2.VpcAccess.VpcEgress do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :VPC_EGRESS_UNSPECIFIED | :ALL_TRAFFIC | :PRIVATE_RANGES_ONLY

  field :VPC_EGRESS_UNSPECIFIED, 0
  field :ALL_TRAFFIC, 1
  field :PRIVATE_RANGES_ONLY, 2
end
defmodule Google.Cloud.Run.V2.VpcAccess do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          connector: String.t(),
          egress: Google.Cloud.Run.V2.VpcAccess.VpcEgress.t()
        }

  defstruct connector: "",
            egress: :VPC_EGRESS_UNSPECIFIED

  field :connector, 1, type: :string, deprecated: false
  field :egress, 2, type: Google.Cloud.Run.V2.VpcAccess.VpcEgress, enum: true
end
defmodule Google.Cloud.Run.V2.BinaryAuthorization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          binauthz_method: {:use_default, boolean},
          breakglass_justification: String.t()
        }

  defstruct binauthz_method: nil,
            breakglass_justification: ""

  oneof :binauthz_method, 0

  field :use_default, 1, type: :bool, json_name: "useDefault", oneof: 0
  field :breakglass_justification, 2, type: :string, json_name: "breakglassJustification"
end
defmodule Google.Cloud.Run.V2.RevisionScaling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_instance_count: integer,
          max_instance_count: integer
        }

  defstruct min_instance_count: 0,
            max_instance_count: 0

  field :min_instance_count, 1, type: :int32, json_name: "minInstanceCount"
  field :max_instance_count, 2, type: :int32, json_name: "maxInstanceCount"
end
